/*
  This file is part of the Structure SDK.
  Copyright © 2019 Occipital, Inc. All rights reserved.
  http://structure.io
*/

#import "ViewController.h"

@interface ViewController (SLAM)

- (void)clearSLAM;
- (void)setupSLAM;
- (void)enterTrackingState;
- (TrackerUpdate)getMoreRecentTrackerUpdate:(double)previousTimestamp;
- (void)onStructureSensorStartedStreaming;

- (bool)trackingConsideredBad;

@end
