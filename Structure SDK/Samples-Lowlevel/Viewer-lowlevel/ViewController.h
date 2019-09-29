/*
  This file is part of the Structure SDK.
  Copyright © 2019 Occipital, Inc. All rights reserved.
  http://structure.io
*/

#import <UIKit/UIKit.h>
#define HAS_LIBCXX
#import <Structure/Structure.h>

@interface ViewController : UIViewController <STSensorControllerDelegate>

+ (instancetype) viewController;

@end
