/*
  This file is part of the Structure SDK.
  Copyright © 2019 Occipital, Inc. All rights reserved.
  http://structure.io
*/

#import "CalibrationOverlay.h"
#import <Structure/Structure.h>

namespace {

const CGFloat padding = 4.;
const CGFloat roundness = 8.;
const CGFloat imageSize = 48.;
const CGFloat fontSize = 16.;
const CGFloat textMargin = 8;
const CGFloat textHeight = (imageSize - padding) / 2;
const CGFloat textWidth = 280. - textMargin;
const CGFloat textX = imageSize + 2 * padding + textMargin;
const CGFloat totalWidth  = padding * 3 + imageSize + textMargin + textWidth;
const CGFloat totalHeight = padding * 2 + imageSize;

const CGRect messageFrame = CGRectMake(textX, padding, textWidth, textHeight);
const CGRect buttonFrame = CGRectMake(textX, padding + textHeight + padding, textWidth, textHeight);
const CGRect imageFrame = CGRectMake(padding, padding, imageSize, imageSize);

}

@implementation CalibrationOverlay
{
    UILabel*     message;
    UIButton*    button;
    UIImageView* image;
}

- (id)initWithFrame:(CGRect)frame hasApproximateCalibration:(BOOL)hasApproxCal
{
    if (!(self = [super initWithFrame:frame]))
        return self;

    [self setup:hasApproxCal];

    return self;
}

- (id)initWithCoder:(NSCoder*)coder hasApproximateCalibration:(BOOL)hasApproxCal
{
    if (!(self = [super initWithCoder:coder]))
        return self;

    [self setup:hasApproxCal];

    return self;
}

- (void)setup:(BOOL)hasApproximateCalibration
{
    UIFont* font = [UIFont fontWithName:@"DIN Alternate Bold" size: fontSize];

    self.frame = CGRectMake(0., 0., totalWidth, totalHeight);

    self.backgroundColor = [UIColor colorWithWhite:0.25 alpha:0.25];
    self.layer.cornerRadius = roundness;
    self.userInteractionEnabled = YES;

    image = [[UIImageView alloc] initWithFrame: imageFrame];
    image.contentMode = UIViewContentModeScaleAspectFit;
    image.image = [UIImage imageNamed:@"calibration"];
    image.layer.cornerRadius = roundness;
    image.clipsToBounds = YES;
    [self addSubview: image];

    message = [[UILabel alloc] initWithFrame: messageFrame];
    message.font = font;
    message.text = hasApproximateCalibration ?
        @"Calibration needed for best results." : @"Calibration necessary for this lens + device.";
    message.textColor = [UIColor whiteColor];
    [self addSubview: message];

    button = [UIButton buttonWithType: UIButtonTypeSystem];
    button.frame = buttonFrame;
    
    [button setTitle: @"Calibrate Now" forState: UIControlStateNormal];
    button.tintColor = [UIColor colorWithRed:0.25 green:0.73 blue: 0.88 alpha: 1.];
    button.titleLabel.font = font;
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);

    [button addTarget: self action: @selector(buttonClicked:) forControlEvents: UIControlEventTouchUpInside];

    [self addSubview: button];
}

- (void)buttonClicked: (UIButton*) button
{
    launchCalibratorAppOrGoToAppStore();
}

+ (CalibrationOverlay*)calibrationOverlaySubviewOf:(UIView*)view atCenter:(CGPoint)center hasApproximateCalibration:(BOOL)hasApproxCal
{
    CalibrationOverlay* ret = [[CalibrationOverlay alloc] initWithFrame:CGRectMake(0, 0, totalWidth, totalHeight)
                                              hasApproximateCalibration:hasApproxCal];
    
    [view addSubview: ret];

    ret.center = center;

    return ret;
}

+ (CalibrationOverlay*)calibrationOverlaySubviewOf:(UIView*)view atOrigin:(CGPoint)origin hasApproximateCalibration:(BOOL)hasApproxCal
{
    CalibrationOverlay* ret = [[CalibrationOverlay alloc] initWithFrame:CGRectMake(0, 0, totalWidth, totalHeight)
                                              hasApproximateCalibration:hasApproxCal];

    [view addSubview: ret];

    ret.frame = CGRectMake(origin.x, origin.y, ret.frame.size.width, ret.frame.size.height);

    return ret;
}

@end
