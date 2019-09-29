/*
  This file is part of the Structure SDK.
  Copyright © 2019 Occipital, Inc. All rights reserved.
  http://structure.io
*/

#import "ViewController.h"

@interface ViewController (Sensor) <STCaptureSessionDelegate>

- (void)setupCaptureSession;
- (BOOL)isStructureConnected;
- (void)startStructureStreaming;

@end
