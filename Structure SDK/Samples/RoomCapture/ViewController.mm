/*
 This file is part of the Structure SDK.
 Copyright © 2019 Occipital, Inc. All rights reserved.
 http://structure.io
 */

#import "ViewController.h"
#import "ViewController+OpenGL.h"
#import "ViewController+CaptureSession.h"
#import "ViewController+SLAM.h"

#import <Structure/Structure.h>
#import <Structure/StructureSLAM.h>

#import "CustomUIKitStyles.h"

#include <cmath>

@implementation ViewController

#pragma mark - ViewController Setup

+ (instancetype) viewController
{
    return [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
}

- (void)dealloc
{
    [self.avCaptureSession stopRunning];
    
    if ([EAGLContext currentContext] == _display.context)
    {
        [EAGLContext setCurrentContext:nil];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupGL];
    
    [self setupUserInterface];
    
    [self setupMeshViewController];
    
    [self setupIMU];
    
    [self setupSLAM];
    
    [self setupCaptureSession];
    
    // Make sure we get notified when the app becomes active to start/restore the sensor state if necessary.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(appDidBecomeActive)
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:nil];

    _settingsPopupView = [[SettingsPopupView alloc] initWithSettingsPopupViewDelegate:self];
    [self.view addSubview:_settingsPopupView];
    [_settingsPopupView.superview
     addConstraints:@[// Pin to top of superview with offset
                      [NSLayoutConstraint constraintWithItem:_settingsPopupView
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:_settingsPopupView.superview
                                                   attribute:NSLayoutAttributeTop
                                                  multiplier:1.0
                                                    constant:20.0],
                      // Pin to left of superview with offset
                      [NSLayoutConstraint constraintWithItem:_settingsPopupView
                                                   attribute:NSLayoutAttributeLeft
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:_settingsPopupView.superview
                                                   attribute:NSLayoutAttributeLeft
                                                  multiplier:1.0
                                                    constant:30.0]]];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // The framebuffer will only be really ready with its final size after the view appears.
    [(EAGLView *)self.view setFramebuffer];
    
    [self setupGLViewport];
    
    // We will connect to the sensor when we receive appDidBecomeActive.
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)appDidBecomeActive
{
    // Try to connect to the Structure Sensor and stream if necessary.
    if ([self currentStateNeedsSensor])
    {
        _captureSession.streamingEnabled = YES;
    }
    
    // Abort the current scan if we were still scanning before going into background since we
    // are not likely to recover well.
    if (_slamState.roomCaptureState == RoomCaptureStateScanning)
    {
        [self resetButtonPressed:self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)setupUserInterface
{
    // Make sure the status bar is hidden.
    [self prefersStatusBarHidden];
    
    // Fully transparent message label, initially.
    self.appStatusMessageLabel.alpha = 0;
    
    // Make sure the label is on top of everything else.
    self.appStatusMessageLabel.layer.zPosition = 100;
    
    // Apply our custom style to the tracking status label.
    [self.trackingMessageLabel applyCustomStyleWithBackgroundColor:blackLabelColorWithLightAlpha];
    
    // Apply our custom style to the roomSize label.
    [self.roomSizeLabel applyCustomStyleWithBackgroundColor:blackLabelColorWithLightAlpha];
    
    // Setup the roomSize slider range. It represents a scale factor, applied to the initial size.
    self.roomSizeSlider.value = 1.0;
    self.roomSizeSlider.minimumValue = 1.0/3.0;
    self.roomSizeSlider.maximumValue = 5.0/3.0;
    self.roomSizeLabel.hidden = true;
    
    _calibrationOverlay = nil;
}

// Make sure the status bar is disabled (iOS 7+)
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)setupMeshViewController
{
    // The mesh viewer will be used after scanning.
    _meshViewController = [MeshViewController viewController];
    _meshViewController.delegate = self;
    _meshViewNavigationController = [[UINavigationController alloc] initWithRootViewController:_meshViewController];
}

- (void)enterPoseInitializationState
{
    // Switch to the Scan button.
    self.scanButton.hidden = NO;
    self.doneButton.hidden = YES;
    self.resetButton.hidden = YES;
    
    // Show the room size controls.
    self.roomSizeSlider.hidden = NO;
    
    // Hide the WVL switch
    self.wideVisionLensControl.hidden = NO;

    // Cannot be lost in cube placement mode.
    _trackingMessageLabel.hidden = YES;
    
    _slamState.roomCaptureState = RoomCaptureStatePoseInitialization;
    
    [self updateIdleTimer];
    
    _captureSession.lensDetection = STLensDetectorWarnOnMismatch;
    _captureSession.properties = STCaptureSessionPropertiesSetColorCameraAutoExposureISOAndWhiteBalance();
    _captureSession.streamingEnabled = YES;
}

- (void)enterScanningState
{
    // Switch to the Done button.
    self.scanButton.hidden = YES;
    self.doneButton.hidden = NO;
    self.resetButton.hidden = NO;
    
    // Hide the room size controls.
    self.roomSizeLabel.hidden = YES;
    self.roomSizeSlider.hidden = YES;
    
    // Hide the WVL switch
    self.wideVisionLensControl.hidden = YES;

    // Create a mapper.
    [self setupMapper];

    // Set the initial tracker camera pose.
    _slamState.tracker.initialCameraPose = _slamState.cameraPoseInitializer.lastOutput.cameraPose;
    
    // We will lock exposure during scanning to ensure better coloring.
    _captureSession.properties = STCaptureSessionPropertiesLockAllColorCameraPropertiesToCurrent();
    
    // Turn off the lens detector
    _captureSession.lensDetection = STLensDetectorOff;
    
    _slamState.roomCaptureState = RoomCaptureStateScanning;
}

- (void)enterFinalizingState
{
    // Cannot be lost if not scanning anymore.
    [self hideTrackingErrorMessage];
    
    // Hide the Scan/Done/Reset button.
    self.scanButton.hidden = YES;
    self.doneButton.hidden = YES;
    self.resetButton.hidden = YES;
    
    // Stop the sensors, we don't need them.
    _captureSession.streamingEnabled = NO;
    
    // Tell the mapper to compute a final triangle mesh from its data. Will also stop background processing.
    [_slamState.mapper finalizeTriangleMesh];
    
    _slamState.roomCaptureState = RoomCaptureStateFinalizing;
    
    // Colorize the mesh in a background queue.
    [self colorizeMeshInBackground];
}

- (void)colorizeMeshInBackground
{
    // Take a copy of the scene mesh to safely modify it.
    _colorizedMesh = [[STMesh alloc] initWithMesh:[_slamState.scene lockAndGetSceneMesh]];
    [_slamState.scene unlockSceneMesh];
    
    _appStatus.backgroundProcessingStatus = AppStatus::BackgroundProcessingStatusFinalizing;
    [self updateAppStatusMessage];
    
    STBackgroundTask* colorizeTask = [STColorizer
                                      newColorizeTaskWithMesh:_colorizedMesh
                                      scene:_slamState.scene
                                      keyframes:[_slamState.keyFrameManager getKeyFrames]
                                      completionHandler: ^(NSError *error)
                                      {
                                          if (error != nil) {
                                              NSLog(@"Error during colorizing: %@", [error localizedDescription]);
                                          }
                                          
                                          dispatch_async(dispatch_get_main_queue(), ^{
                                              
                                              self->_appStatus.backgroundProcessingStatus = AppStatus::BackgroundProcessingStatusIdle;
                                              self->_appStatus.statusMessageDisabled = true;
                                              [self updateAppStatusMessage];
                                              
                                              [self enterViewingState];
                                          });
                                      }
                                      options:@{kSTColorizerTypeKey: @(STColorizerTextureMapForRoom) }
                                      error:nil];
    
    [colorizeTask start];
}

- (void)enterViewingState
{
    // Place the camera in the center of the scanning volume.
    GLKVector3 cameraCenter = GLKVector3MultiplyScalar(_slamState.cameraPoseInitializer.volumeSizeInMeters, 0.5);
    GLKMatrix4 initialCameraPose = GLKMatrix4MakeTranslation(cameraCenter.x, cameraCenter.y, cameraCenter.z);
    
    [self presentMeshViewer:_colorizedMesh withCameraPose:initialCameraPose];
    
    _slamState.roomCaptureState = RoomCaptureStateViewing;
    
    [self updateIdleTimer];
}

-(BOOL)currentStateNeedsSensor
{
    switch (_slamState.roomCaptureState)
    {
            // Initialization and scanning need the sensor.
        case RoomCaptureStatePoseInitialization:
        case RoomCaptureStateScanning:
            return TRUE;
            
            // Other states don't need the sensor.
        default:
            return FALSE;
    }
}

#pragma mark - IMU

- (void)setupIMU
{
    _lastCoreMotionGravity = GLKVector3Make (0,0,0);
    
    // 60 FPS is responsive enough for motion events.
    const float fps = 60.0;
    _motionManager = [[CMMotionManager alloc] init];
    _motionManager.accelerometerUpdateInterval = 1.0/fps;
    _motionManager.gyroUpdateInterval = 1.0/fps;
    
    // Limiting the concurrent ops to 1 is a simple way to force serial execution
    _imuQueue = [[NSOperationQueue alloc] init];
    [_imuQueue setMaxConcurrentOperationCount:1];
    
    __weak ViewController *weakSelf = self;
    CMDeviceMotionHandler dmHandler = ^(CMDeviceMotion *motion, NSError *error)
    {
        // Could be nil if the self is released before the callback happens.
        if (weakSelf) {
            [weakSelf processDeviceMotion:motion withError:error];
        }
    };
    
    [_motionManager startDeviceMotionUpdatesToQueue:_imuQueue withHandler:dmHandler];
}

- (void)processDeviceMotion:(CMDeviceMotion *)motion withError:(NSError *)error
{
    if (_slamState.roomCaptureState == RoomCaptureStatePoseInitialization)
    {
        // Update our gravity vector, it will be used by the cube placement initializer.
        _lastCoreMotionGravity = GLKVector3Make (motion.gravity.x, motion.gravity.y, motion.gravity.z);
    }
    
    if (_slamState.roomCaptureState == RoomCaptureStatePoseInitialization || _slamState.roomCaptureState == RoomCaptureStateScanning)
    {
        // The tracker is more robust to fast moves if we feed it with motion data.
        [_slamState.tracker updateCameraPoseWithMotion:motion];
    }
}

#pragma mark - Message Display

- (void)showTrackingMessage:(NSString*)message
{
    self.trackingMessageLabel.text = message;
    self.trackingMessageLabel.hidden = NO;
}

- (void)hideTrackingErrorMessage
{
    self.trackingMessageLabel.hidden = YES;
}

- (void)showAppStatusMessage:(NSString *)msg
{
    _appStatus.needsDisplayOfStatusMessage = true;
    [self.view.layer removeAllAnimations];
    
    [self.appStatusMessageLabel setText:msg];
    [self.appStatusMessageLabel setHidden:NO];
    
    // Progressively show the message label.
    [self.view setUserInteractionEnabled:false];
    [UIView animateWithDuration:0.5f animations:^{
        self.appStatusMessageLabel.alpha = 1.0f;
    }completion:nil];
}

- (void)hideAppStatusMessage
{
    if (!_appStatus.needsDisplayOfStatusMessage)
        return;
    
    _appStatus.needsDisplayOfStatusMessage = false;
    [self.view.layer removeAllAnimations];
    
    __weak ViewController *weakSelf = self;
    [UIView animateWithDuration:0.5f
                     animations:^{
                         weakSelf.appStatusMessageLabel.alpha = 0.0f;
                     }
                     completion:^(BOOL finished) {
                         // If nobody called showAppStatusMessage before the end of the animation, do not hide it.
                         if (!self->_appStatus.needsDisplayOfStatusMessage)
                         {
                             // Could be nil if the self is released before the callback happens.
                             if (weakSelf) {
                                 [weakSelf.appStatusMessageLabel setHidden:YES];
                                 [weakSelf.view setUserInteractionEnabled:true];
                             }
                         }
                     }];
}

-(void)updateAppStatusMessage
{
    STCaptureSessionUserInstruction userInstructions = _captureSession.userInstructions;
    
    // Skip everything if we should not show app status messages (e.g. in viewing state).
    if (_appStatus.statusMessageDisabled)
    {
        [self hideAppStatusMessage];
        return;
    }
    
    bool needToConnectSensor = userInstructions & STCaptureSessionUserInstructionNeedToConnectSensor;
    bool needToChargeSensor = userInstructions & STCaptureSessionUserInstructionNeedToChargeSensor;
    bool needToAuthorizeColorCamera = userInstructions & STCaptureSessionUserInstructionNeedToAuthorizeColorCamera;
    
    // If you don't want to display the overlay message when an approximate calibration
    // is available use `_captureSession.calibrationType >= STCalibrationTypeApproximate`
    bool needToRunCalibrator = userInstructions & STCaptureSessionUserInstructionNeedToRunCalibrator;
    
    if (needToConnectSensor)
    {
        [self showAppStatusMessage:_appStatus.pleaseConnectSensorMessage];
        return;
    }
    
    if (_captureSession.sensorMode == STCaptureSessionSensorModeWakingUp)
    {
        [self showAppStatusMessage:_appStatus.sensorIsWakingUpMessage];
        return;
    }

    if (needToChargeSensor)
    {
        [self showAppStatusMessage:_appStatus.pleaseChargeSensorMessage];
        return;
    }

    if (_calibrationOverlay) { [_calibrationOverlay removeFromSuperview]; }
    if (needToRunCalibrator)
    {
        CalibrationOverlayType overlayType = CalibrationOverlayTypeNone;
        switch (_captureSession.calibrationType)
        {
            case STCalibrationTypeNone:
            {
                self.scanButton.enabled = NO;
                if (_captureSession.lens == STLensWideVision)
                {
                    overlayType = CalibrationOverlayTypeStrictlyRequired;
                }
                break;
            }
            case STCalibrationTypeApproximate:
            {
                self.scanButton.enabled = YES;
                overlayType = CalibrationOverlayTypeApproximate;
                break;
            }
            case STCalibrationTypeDeviceSpecific:
                // We should not ever enter this case if `needToRunCalibrator` is true
                break;
            default:
                NSLog(@"WARNING: Unknown calibration type returned from the capture session.");
                break;
        }
        
        const bool isIPad = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
        
        _calibrationOverlay = [[CalibrationOverlay alloc] initWithType:overlayType];
        [self.view addSubview:_calibrationOverlay];
        [self.view bringSubviewToFront:_calibrationOverlay];
        
        // Center the calibration overlay in X
        [_calibrationOverlay.superview addConstraint:
         [NSLayoutConstraint constraintWithItem:_calibrationOverlay
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:_calibrationOverlay.superview
                                      attribute:NSLayoutAttributeCenterX
                                     multiplier:1.0
                                       constant:0.0]];
        
        if (overlayType == CalibrationOverlayTypeApproximate)
        {
            [_calibrationOverlay.superview addConstraint:
             [NSLayoutConstraint constraintWithItem:_calibrationOverlay
                                          attribute:NSLayoutAttributeBottom
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:_calibrationOverlay.superview
                                          attribute:NSLayoutAttributeBottom
                                         multiplier:1.0
                                           constant:(isIPad ? -100 : -25)]];
        }
        else
        {
            [_calibrationOverlay.superview addConstraint:
             [NSLayoutConstraint constraintWithItem:_calibrationOverlay
                                          attribute:NSLayoutAttributeCenterY
                                          relatedBy:NSLayoutRelationEqual
                                             toItem:_calibrationOverlay.superview
                                          attribute:NSLayoutAttributeCenterY
                                         multiplier:1.0
                                           constant:0.0]];
        }
        
        if (!isIPad && overlayType != CalibrationOverlayTypeApproximate)
        {
            _calibrationOverlay.transform = CGAffineTransformMakeScale(0.85, 0.85);
        }
    }

    if (needToAuthorizeColorCamera)
    {
        [self showAppStatusMessage:_appStatus.needColorCameraAccessMessage];
        return;
    }
    
    // Finally background processing feedback.
    switch (_appStatus.backgroundProcessingStatus)
    {
        case AppStatus::BackgroundProcessingStatusIdle:
        {
            break;
        }
            
        case AppStatus::BackgroundProcessingStatusFinalizing:
        {
            [self showAppStatusMessage:_appStatus.finalizingMeshMessage];
            return;
        }
    }
    
    // If we reach this point, no status to show.
    [self hideAppStatusMessage];
}

#pragma mark - UI Callbacks

// Manages whether we can let the application sleep.
-(void)updateIdleTimer
{
    if ([self isStructureConnected] && [self currentStateNeedsSensor])
    {
        // Do not let the application sleep if we are currently using the sensor data.
        [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
    }
    else
    {
        // Let the application sleep if we are only viewing the mesh or if no sensors are connected.
        [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
    }
}

- (void) streamingPropertiesDidChange:(BOOL)irAutoExposureEnabled
                irManualExposureValue:(float)irManualExposureValue
                    irAnalogGainValue:(STCaptureSessionSensorAnalogGainMode)irAnalogGainValue
{
    _captureSession.properties =
    @{
      kSTCaptureSessionPropertySensorIRExposureModeKey:
          @(irAutoExposureEnabled ? STCaptureSessionSensorExposureModeAuto : STCaptureSessionSensorExposureModeLockedToCustom),
      kSTCaptureSessionPropertySensorIRExposureValueKey: @(irManualExposureValue),
      kSTCaptureSessionPropertySensorIRAnalogGainValueKey: @(irAnalogGainValue)
      };
}

- (void) roomSettingsDidChange:(GLKVector3)newVolumeSize
{
    _slamState.volumeSizeInMeters = newVolumeSize;
    _slamState.cameraPoseInitializer.volumeSizeInMeters = newVolumeSize;
}

- (IBAction)scanButtonPressed:(id)sender
{
// Uncomment the following lines to enable OCC writing.
//    bool success = [_captureSession.occWriter startWriting:@"[AppDocuments]/RoomCapture.occ" appendDateAndExtension:NO];
//    if (!success)
//    {
//        NSLog(@"Could not properly start OCC writer.");
//    }
//
    [self enterScanningState];
}

- (IBAction)resetButtonPressed:(id)sender
{
    // Handles simultaneous press of Done & Reset.
    if(self.doneButton.hidden) return;
    
    if (_captureSession.occWriter.isWriting)
    {
        bool success = [_captureSession.occWriter cancelWriting];
        
        if (!success)
        {
            @throw [NSException exceptionWithName:@"RoomCapture"
                                           reason:@"Could not properly stop OCC writer."
                                         userInfo:nil];
        }
    }
    [self resetSLAM];
    [self enterPoseInitializationState];
}

- (IBAction)doneButtonPressed:(id)sender
{
    // Handles simultaneous press of Done & Reset.
    if(self.doneButton.hidden) return;
    
    if (_captureSession.occWriter.isWriting)
    {
        bool success = [_captureSession.occWriter stopWriting];
        
        if (!success)
        {
            @throw [NSException exceptionWithName:@"RoomCapture"
                                           reason:@"Could not properly stop OCC writer."
                                         userInfo:nil];
        }
    }
    [self enterFinalizingState];
}

- (IBAction)roomSizeSliderTouchDown:(id)sender {
    self.roomSizeLabel.hidden = NO;
}

- (IBAction)roomSizeSliderTouchUpInside:(id)sender {
    self.roomSizeLabel.hidden = YES;
}

- (IBAction)roomSizeSliderTouchUpOutside:(id)sender {
    self.roomSizeLabel.hidden = YES;
}

- (IBAction) wvlToggleSwitched:(UISwitch*)sender {
    _captureSession.lens = sender.isOn ? STLensWideVision : STLensNormal;
    [self updateAppStatusMessage];
}

#pragma mark - MeshViewController delegates

- (void)presentMeshViewer:(STMesh *)mesh withCameraPose:(GLKMatrix4)cameraPose
{
    [(EAGLView *)_meshViewController.view setContext:_display.context];
    [EAGLContext setCurrentContext:_display.context];
    
    // Horizontal field of view.
    float fovXRadians = 90.f/180.f * M_PI;
    float aspectRatio = 4.f/3.f;
    
    if (mesh)
    {
        [_meshViewController uploadMesh:mesh];
    }
    else
    {
        NSLog(@"Error: no mesh!");
    }
    [_meshViewController setHorizontalFieldOfView:fovXRadians aspectRatio:aspectRatio];
    [_meshViewController setCameraPose:cameraPose];
    
    [self presentViewController:_meshViewNavigationController animated:YES completion:^{}];
}

- (void)meshViewWillDismiss
{
    [_meshViewController hideMeshViewerMessage:_meshViewController.meshViewerMessageLabel];
    
    // Make sure we don't keep background task running.
    if (_holeFillingTask)
    {
        [_holeFillingTask cancel];
        _holeFillingTask = nil;
    }
    if (_colorizeTask)
    {
        [_colorizeTask cancel];
        _colorizeTask = nil;
    }
}

- (void)meshViewDidDismiss
{
    _appStatus.statusMessageDisabled = false;
    [self updateAppStatusMessage];
    
    // Reset the tracker, mapper, etc.
    [self resetSLAM];
    [self enterPoseInitializationState];
}

- (void)meshViewDidRequestHoleFilling
{
    if (_holeFilledMesh)
    {
        // If already available, just re-upload it.
        [_meshViewController uploadMesh:_holeFilledMesh];
    }
    else
    {
        // Otherwise compute it now.
        [_meshViewController.holeFillingSwitch setEnabled:NO];
        [self startHoleFillingAndColorizingTasks];
    }
}

- (void)meshViewDidRequestRegularMesh
{
    [_meshViewController uploadMesh:_colorizedMesh];
}

-(void) backgroundTask:(STBackgroundTask*)sender didUpdateProgress:(double)progress
{
    if(sender == _holeFillingTask)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self->_meshViewController showMeshViewerMessage:self->_meshViewController.meshViewerMessageLabel msg:[NSString stringWithFormat:@"Hole filling: % 3d%%", int(progress*80)]];
        });
    }
    else if(sender == _colorizeTask)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self->_meshViewController showMeshViewerMessage:self->_meshViewController.meshViewerMessageLabel msg:[NSString stringWithFormat:@"Coloring Mesh: % 3d%%", int(progress*20)+80]];
        });
    }
}


- (void)startHoleFillingAndColorizingTasks
{
    // Safely copy the scene mesh so we can operate on it while it is being used for rendering.
    STMesh* sceneMesh = [_slamState.scene lockAndGetSceneMesh];
    STMesh* sceneMeshCopy = [[STMesh alloc] initWithMesh:sceneMesh];
    [_slamState.scene unlockSceneMesh];
    
    // If an old task is still running, wait until it completes.
    if (_holeFillingTask)
    {
        [_holeFillingTask waitUntilCompletion];
        _holeFillingTask = nil;
    }
    
    STBackgroundTask* holeFillingTask = [STMesh newFillHolesTaskWithMesh:sceneMeshCopy completionHandler:^(STMesh* result, NSError *error) {
        
        // We must execute on main thread to check if the operation was canceled right before completion.
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self->_holeFilledMesh = result;
            
            if (self->_holeFillingTask.isCancelled)
            {
                // If we reach this point, it means the task was cancelled after we already had the result ready.
                NSLog(@"Error! %s", [[error localizedDescription] UTF8String]);
                return;
            }
            
            // Release the handle on the completed task.
            self->_holeFillingTask = nil;
            
            // Now colorize the hole filled mesh.
            STBackgroundTask* colorizeTask = [STColorizer
                                              newColorizeTaskWithMesh:self->_holeFilledMesh
                                              scene:self->_slamState.scene
                                              keyframes:[self->_slamState.keyFrameManager getKeyFrames]
                                              completionHandler:^(NSError *error)
                                              {
                                                  if (error == nil)
                                                  {
                                                      [self performSelectorOnMainThread:@selector(holeFillingDone) withObject:nil waitUntilDone:NO];
                                                  }
                                                  else
                                                  {
                                                      NSLog(@"Error! %s", [[error localizedDescription] UTF8String]);
                                                  }
                                                  
                                                  self->_colorizeTask = nil; // release the handle on the completed task.
                                              }
                                              options:@{kSTColorizerTypeKey: @(STColorizerTextureMapForRoom) }
                                              error:nil];
            self->_colorizeTask = colorizeTask;
            self->_colorizeTask.delegate = self;
            [self->_colorizeTask start];
        });
    }];
    
    // Keep a reference so we can monitor progress
    _holeFillingTask = holeFillingTask;
    _holeFillingTask.delegate = self;
    
    [_holeFillingTask start];
}

- (void)holeFillingDone
{
    [_meshViewController uploadMesh:_holeFilledMesh];
    [_meshViewController hideMeshViewerMessage:_meshViewController.meshViewerMessageLabel];
    [_meshViewController.holeFillingSwitch setEnabled:YES];
}
@end
