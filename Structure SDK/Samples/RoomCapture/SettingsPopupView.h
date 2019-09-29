/*
 This file is part of the Structure SDK.
 Copyright © 2019 Occipital, Inc. All rights reserved.
 http://structure.io
 */

#pragma once

#import <Foundation/Foundation.h>
#import <Structure/STCaptureSession+Types.h>
#import <UIKit/UIKit.h>

@protocol SettingsPopupViewDelegate

- (void) streamingPropertiesDidChange:(BOOL)irAutoExposureEnabled
                irManualExposureValue:(float)irManualExposureValue
                    irAnalogGainValue:(STCaptureSessionSensorAnalogGainMode)irAnalogGainValue;

- (void) roomSettingsDidChange:(GLKVector3)newVolumeSize;

@end

@interface SettingsPopupView : UIView

- (instancetype) initWithSettingsPopupViewDelegate:(id<SettingsPopupViewDelegate>)delegate;
- (void) enableAllSettingsDuringPreview;
- (void) disableNonDynamicSettingsDuringScanning;

@end
