/*
 This file is part of the Structure SDK.
 Copyright © 2019 Occipital, Inc. All rights reserved.
 http://structure.io
 */

#import "SettingsPopupView.h"
#import "ViewUtilities.h"

@interface SettingsListModal : UIScrollView

@end

@implementation SettingsListModal
{
    id<SettingsPopupViewDelegate> _delegate;

    CGFloat marginSize;
    UIView* _contentView;
    
    // Objects that correspond to dynamic option settings
    UISwitch* irAutoExposureSwitch;
    UISlider* irManualExposureSlider;
    UISegmentedControl* irGainSegmentedControl;
    UILabel* roomSizeLabel;
    UISlider* roomSizeSlider;
}

- (instancetype) initWithSettingsPopupViewDelegate:(id<SettingsPopupViewDelegate>)delegate
{
    self = [super init];

    if (self) {
        _delegate = delegate;
        marginSize = 18.0;
        [self setupUIComponentsAndLayout];
        
        // Default option states
        irAutoExposureSwitch.on = NO;
        irManualExposureSlider.value = 14;
        irManualExposureSlider.enabled = !irAutoExposureSwitch.on;
        irGainSegmentedControl.selectedSegmentIndex = 3;
        roomSizeSlider.value = 1.0;
        
        [self addTouchResponders];

        [self streamingPropertiesDidChange:self];
        [self roomSettingsDidChange:self];
    }
    return self;
}

- (void) setupUIComponentsAndLayout
{
    // Attributes that apply to the whole content view
    self.backgroundColor = [UIColor whiteColor];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    self.clipsToBounds = YES;
    self.layer.cornerRadius = 8.0f;
    
    _contentView = [[UIView alloc] init];
    _contentView.translatesAutoresizingMaskIntoConstraints = NO;
    _contentView.clipsToBounds = YES;
    _contentView.layoutMargins = UIEdgeInsetsMake(marginSize, marginSize, marginSize, marginSize);
    [self addSubview:_contentView];

    [self addConstraints:@[// Pin top of _contentView to its superview
                           [NSLayoutConstraint constraintWithItem:_contentView
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_contentView.superview
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Pin left of _contentView to its superview
                           [NSLayoutConstraint constraintWithItem:_contentView
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_contentView.superview
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Pin bottom of _contentView to its superview
                           [NSLayoutConstraint constraintWithItem:_contentView
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_contentView.superview
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Pin right of _contentView to its superview
                           [NSLayoutConstraint constraintWithItem:_contentView
                                                        attribute:NSLayoutAttributeRight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_contentView.superview
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Make width of _contentView equal to its superview
                           [NSLayoutConstraint constraintWithItem:_contentView
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_contentView.superview
                                                        attribute:NSLayoutAttributeWidth
                                                       multiplier:1.0
                                                         constant:0.0]]];

    UILabel* streamingSettingsLabel = [[UILabel alloc] init];
    streamingSettingsLabel.translatesAutoresizingMaskIntoConstraints = NO;
    streamingSettingsLabel.font = [UIFont systemFontOfSize:14.0 weight:UIFontWeightRegular];
    streamingSettingsLabel.textColor = colorFromHexString(@"505053");
    streamingSettingsLabel.text = @"STREAMING SETTINGS";
    [_contentView addSubview:streamingSettingsLabel];
    
    [streamingSettingsLabel.superview
     addConstraints:@[// Pin top of streaming settings label to superview with offset
                      [NSLayoutConstraint constraintWithItem:streamingSettingsLabel
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:streamingSettingsLabel.superview
                                                   attribute:NSLayoutAttributeTopMargin
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin left of streaming settings label to superview with offset
                      [NSLayoutConstraint constraintWithItem:streamingSettingsLabel
                                                   attribute:NSLayoutAttributeLeading
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:streamingSettingsLabel.superview
                                                   attribute:NSLayoutAttributeLeadingMargin
                                                  multiplier:1.0
                                                    constant:0.0]]];
    
    UIView* hr1 = createHorizontalRule(1.0);
    hr1.backgroundColor = colorFromHexString(@"#979797");
    [_contentView addSubview:hr1];

    [hr1.superview
     addConstraints:@[// Pin top of hr1 to bottom of streaming settings label with offset
                      [NSLayoutConstraint constraintWithItem:hr1
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:streamingSettingsLabel
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:9.0],
                      // Pin leading edge of hr1 to superview
                      [NSLayoutConstraint constraintWithItem:hr1
                                                   attribute:NSLayoutAttributeCenterX
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr1.superview
                                                   attribute:NSLayoutAttributeCenterX
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Set width of hr1 to equal that of the superview
                      [NSLayoutConstraint constraintWithItem:hr1
                                                   attribute:NSLayoutAttributeWidth
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr1.superview
                                                   attribute:NSLayoutAttributeWidth
                                                  multiplier:1.0
                                                    constant:0.0]]];
    
    UIView* streamingSettingsView = [[UIView alloc] init];
    streamingSettingsView.translatesAutoresizingMaskIntoConstraints = NO;
    streamingSettingsView.backgroundColor = colorFromHexString(@"#F1F1F1");
    streamingSettingsView.layoutMargins = UIEdgeInsetsMake(marginSize, marginSize, marginSize, marginSize);
    [_contentView addSubview:streamingSettingsView];
    
    [streamingSettingsView.superview
     addConstraints:@[// Pin top of streamingSettingsView to bottom of hr1
                      [NSLayoutConstraint constraintWithItem:streamingSettingsView
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr1
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin leading edge of streaming settings view to superview
                      [NSLayoutConstraint constraintWithItem:streamingSettingsView
                                                   attribute:NSLayoutAttributeLeading
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:streamingSettingsView.superview
                                                   attribute:NSLayoutAttributeLeading
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin trailing edge of streaming settings view to superview
                      [NSLayoutConstraint constraintWithItem:streamingSettingsView
                                                   attribute:NSLayoutAttributeWidth
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:streamingSettingsView.superview
                                                   attribute:NSLayoutAttributeWidth
                                                  multiplier:1.0
                                                    constant:0.0]]];

    // Streaming settings
    {
        UILabel* irAutoExposureLabel = [[UILabel alloc] init];
        irAutoExposureLabel.translatesAutoresizingMaskIntoConstraints = NO;
        irAutoExposureLabel.font = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
        irAutoExposureLabel.textColor = colorFromHexString(@"#3A3A3C");
        irAutoExposureLabel.text = @"IR Auto Exposure (Mark II only)";
        [streamingSettingsView addSubview:irAutoExposureLabel];
        
        [irAutoExposureLabel.superview
         addConstraints:@[// Pin top of IR auto exposure label to bottom of horizontal rule 1 with offset
                          [NSLayoutConstraint constraintWithItem:irAutoExposureLabel
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irAutoExposureLabel.superview
                                                       attribute:NSLayoutAttributeTopMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin leading edge of IR auto exposure label to its superview's leading margin
                          [NSLayoutConstraint constraintWithItem:irAutoExposureLabel
                                                       attribute:NSLayoutAttributeLeading
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irAutoExposureLabel.superview
                                                       attribute:NSLayoutAttributeLeadingMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];
        
        irAutoExposureSwitch = [[UISwitch alloc] init];
        irAutoExposureSwitch.translatesAutoresizingMaskIntoConstraints = NO;
        irAutoExposureSwitch.userInteractionEnabled = YES;
        irAutoExposureSwitch.onTintColor = colorFromHexString(@"#00C3FF");
        [streamingSettingsView addSubview:irAutoExposureSwitch];
        
        [irAutoExposureSwitch.superview
         addConstraints:@[// Align centre Y of switch to centre Y of corresponding label
                          [NSLayoutConstraint constraintWithItem:irAutoExposureSwitch
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irAutoExposureLabel
                                                       attribute:NSLayoutAttributeCenterY
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin trailing edge of switch to trailing edge of superview
                          [NSLayoutConstraint constraintWithItem:irAutoExposureSwitch
                                                       attribute:NSLayoutAttributeTrailing
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irAutoExposureSwitch.superview
                                                       attribute:NSLayoutAttributeTrailingMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];

        UIView* streamingHR1 = createHorizontalRule(1.0);
        streamingHR1.backgroundColor = colorFromHexString(@"#979797");
        [streamingSettingsView addSubview:streamingHR1];

        [streamingHR1.superview
         addConstraints:@[// Pin top of streamingHR2 to bottom of streaming settings label with offset
                          [NSLayoutConstraint constraintWithItem:streamingHR1
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irAutoExposureLabel
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin leading edge of streamingHR2 to superview
                          [NSLayoutConstraint constraintWithItem:streamingHR1
                                                       attribute:NSLayoutAttributeCenterX
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:streamingHR1.superview
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Set width of streamingHR2 to equal that of 90% of the superview
                          [NSLayoutConstraint constraintWithItem:streamingHR1
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:streamingHR1.superview
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:0.9
                                                        constant:0.0]]];

        UILabel* irManualExposureLabel = [[UILabel alloc] init];
        irManualExposureLabel.translatesAutoresizingMaskIntoConstraints = NO;
        irManualExposureLabel.font = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
        irManualExposureLabel.textColor = colorFromHexString(@"#3A3A3C");
        irManualExposureLabel.text = @"IR Manual Exposure (Mark II only)";
        [streamingSettingsView addSubview:irManualExposureLabel];

        [irManualExposureLabel.superview
         addConstraints:@[// Pin top of IR manual exposure label to bottom of horizontal rule 1 with offset
                          [NSLayoutConstraint constraintWithItem:irManualExposureLabel
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:streamingHR1
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin leading edge of IR manual exposure label to its superview's leading margin
                          [NSLayoutConstraint constraintWithItem:irManualExposureLabel
                                                       attribute:NSLayoutAttributeLeading
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irManualExposureLabel.superview
                                                       attribute:NSLayoutAttributeLeadingMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];

        irManualExposureSlider = [[UISlider alloc] init];
        irManualExposureSlider.translatesAutoresizingMaskIntoConstraints = NO;
        irManualExposureSlider.tintColor = colorFromHexString(@"#00C3FF");
        irManualExposureSlider.minimumValue = 1.0;
        irManualExposureSlider.maximumValue = 16.0;
        irManualExposureSlider.userInteractionEnabled = YES;
        [streamingSettingsView addSubview:irManualExposureSlider];

        UILabel* irExposureMinimumValueLabel = [[UILabel alloc] init];
        irExposureMinimumValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
        irExposureMinimumValueLabel.font = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
        irExposureMinimumValueLabel.textColor = colorFromHexString(@"979797");
        irExposureMinimumValueLabel.text = @"1 ms";
        [streamingSettingsView addSubview:irExposureMinimumValueLabel];

        UILabel* irExposureMaximumValueLabel = [[UILabel alloc] init];
        irExposureMaximumValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
        irExposureMaximumValueLabel.font = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
        irExposureMaximumValueLabel.textColor = colorFromHexString(@"979797");
        irExposureMaximumValueLabel.text = @"16 ms";
        [streamingSettingsView addSubview:irExposureMaximumValueLabel];
        
        [irManualExposureSlider.superview
         addConstraints:@[// Pin centre Y of IR exposure slider to bottom of IR exposure label with offset
                          [NSLayoutConstraint constraintWithItem:irManualExposureSlider
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irManualExposureLabel
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin centre Y of IR exposure min label to centre Y of IR exposure slider
                          [NSLayoutConstraint constraintWithItem:irExposureMinimumValueLabel
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irManualExposureSlider
                                                       attribute:NSLayoutAttributeCenterY
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin left edge of IR exposure min label to left margin of superview
                          [NSLayoutConstraint constraintWithItem:irExposureMinimumValueLabel
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irExposureMinimumValueLabel.superview
                                                       attribute:NSLayoutAttributeLeftMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin right edge of IR exposure min label to left edge of IR exposure slider with offset
                          [NSLayoutConstraint constraintWithItem:irManualExposureSlider
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irExposureMinimumValueLabel
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin centre Y of IR exposure max label to centre Y of IR exposure slider
                          [NSLayoutConstraint constraintWithItem:irExposureMaximumValueLabel
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irManualExposureSlider
                                                       attribute:NSLayoutAttributeCenterY
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin right edge of IR exposure max label to right margin of superview
                          [NSLayoutConstraint constraintWithItem:irExposureMaximumValueLabel
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irExposureMaximumValueLabel.superview
                                                       attribute:NSLayoutAttributeRightMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin left edge of IR max exposure to right edge of IR exposure slider with offset
                          [NSLayoutConstraint constraintWithItem:irExposureMaximumValueLabel
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irManualExposureSlider
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1.0
                                                        constant:marginSize]]];
        
        UIView* streamingHR3 = createHorizontalRule(1.0);
        streamingHR3.backgroundColor = colorFromHexString(@"#979797");
        [streamingSettingsView addSubview:streamingHR3];
        
        [streamingHR3.superview
         addConstraints:@[// Pin top of HR2 to bottom of streaming settings label with offset
                          [NSLayoutConstraint constraintWithItem:streamingHR3
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irManualExposureSlider
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin leading edge of HR2 to superview
                          [NSLayoutConstraint constraintWithItem:streamingHR3
                                                       attribute:NSLayoutAttributeCenterX
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:streamingHR3.superview
                                                       attribute:NSLayoutAttributeCenterX
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Set width of HR2 to equal that of 90% of the superview
                          [NSLayoutConstraint constraintWithItem:streamingHR3
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:streamingHR3.superview
                                                       attribute:NSLayoutAttributeWidth
                                                      multiplier:0.9
                                                        constant:0.0]]];
        
        UILabel* irGainLabel = [[UILabel alloc] init];
        irGainLabel.translatesAutoresizingMaskIntoConstraints = NO;
        irGainLabel.font = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
        irGainLabel.textColor = colorFromHexString(@"3A3A3C");
        irGainLabel.text = @"IR Analog Gain (Mark II only)";
        [streamingSettingsView addSubview:irGainLabel];
        
        [irGainLabel.superview
         addConstraints:@[// Pin top of IR gain label to bottom of horizontal rule 2 with offset
                          [NSLayoutConstraint constraintWithItem:irGainLabel
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:streamingHR3
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin leading edge of IR gain label to its superview's leading margin
                          [NSLayoutConstraint constraintWithItem:irGainLabel
                                                       attribute:NSLayoutAttributeLeading
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irGainLabel.superview
                                                       attribute:NSLayoutAttributeLeadingMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];

        irGainSegmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"1x", @"2x", @"4x", @"8x"]];
        irGainSegmentedControl.translatesAutoresizingMaskIntoConstraints = NO;
        irGainSegmentedControl.clipsToBounds = YES;
        irGainSegmentedControl.userInteractionEnabled = YES;
        irGainSegmentedControl.backgroundColor = colorFromHexString(@"#D2D2D2");
        irGainSegmentedControl.tintColor = colorFromHexString(@"#00C3FF");
        [irGainSegmentedControl setTitleTextAttributes:@{
                                                         NSFontAttributeName: [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium],
                                                         NSForegroundColorAttributeName: colorFromHexString(@"#505053")
                                                         }
                                              forState:UIControlStateNormal];
        [irGainSegmentedControl setTitleTextAttributes:@{
                                                         NSFontAttributeName: [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium],
                                                         NSForegroundColorAttributeName: [UIColor whiteColor]
                                                         }
                                              forState:UIControlStateSelected];
        [irGainSegmentedControl setBackgroundImage:imageWithColor(colorFromHexString(@"#DEDEDE"), CGRectMake(0.0, 0.0, 1.0, 30.0), 0.0)
                                          forState:UIControlStateNormal
                                        barMetrics:UIBarMetricsDefault];
        [irGainSegmentedControl setBackgroundImage:imageWithColor(colorFromHexString(@"#00C3FF"), CGRectMake(0.0, 0.0, 1.0, 30.0), 0.0)
                                          forState:UIControlStateSelected
                                        barMetrics:UIBarMetricsDefault];
        [irGainSegmentedControl setDividerImage:imageWithColor([UIColor clearColor], CGRectMake(0.0, 0.0, 1.0, 30.0), 0.0)
                            forLeftSegmentState:UIControlStateNormal
                              rightSegmentState:UIControlStateNormal
                                     barMetrics:UIBarMetricsDefault];
        [irGainSegmentedControl setDividerImage:imageWithColor([UIColor clearColor], CGRectMake(0.0, 0.0, 1.0, 30.0), 0.0)
                            forLeftSegmentState:UIControlStateNormal
                              rightSegmentState:UIControlStateSelected
                                     barMetrics:UIBarMetricsDefault];
        irGainSegmentedControl.layer.cornerRadius = 8.0f;
        [streamingSettingsView addSubview:irGainSegmentedControl];
        
        [irGainSegmentedControl.superview
         addConstraints:@[// Pin top of IR gain control to bottom of IR gain label with offset
                          [NSLayoutConstraint constraintWithItem:irGainSegmentedControl
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irGainLabel
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin leading edge of IR gain control to leading margin of superview
                          [NSLayoutConstraint constraintWithItem:irGainSegmentedControl
                                                       attribute:NSLayoutAttributeLeading
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irGainSegmentedControl.superview
                                                       attribute:NSLayoutAttributeLeadingMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin trailing edge of IR gain control to trailing margin of superview
                          [NSLayoutConstraint constraintWithItem:irGainSegmentedControl
                                                       attribute:NSLayoutAttributeTrailing
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irGainSegmentedControl.superview
                                                       attribute:NSLayoutAttributeTrailingMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin bottom of segmented control to bottom margin of superview
                          [NSLayoutConstraint constraintWithItem:irGainSegmentedControl
                                                       attribute:NSLayoutAttributeBottom
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:irGainSegmentedControl.superview
                                                       attribute:NSLayoutAttributeBottomMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];
    }
    
    UIView* hr2 = createHorizontalRule(1.0);
    hr2.backgroundColor = colorFromHexString(@"#979797");
    [_contentView addSubview:hr2];
    
    [hr2.superview
     addConstraints:@[// Pin top of hr1 to bottom of streaming settings label with offset
                      [NSLayoutConstraint constraintWithItem:hr2
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:streamingSettingsView
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin leading edge of hr1 to superview
                      [NSLayoutConstraint constraintWithItem:hr2
                                                   attribute:NSLayoutAttributeCenterX
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr2.superview
                                                   attribute:NSLayoutAttributeCenterX
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Set width of hr1 to equal that of the superview
                      [NSLayoutConstraint constraintWithItem:hr2
                                                   attribute:NSLayoutAttributeWidth
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr2.superview
                                                   attribute:NSLayoutAttributeWidth
                                                  multiplier:1.0
                                                    constant:0.0]]];

    UILabel* roomSettingsLabel = [[UILabel alloc] init];
    roomSettingsLabel.translatesAutoresizingMaskIntoConstraints = NO;
    roomSettingsLabel.font = [UIFont systemFontOfSize:14.0 weight:UIFontWeightRegular];
    roomSettingsLabel.textColor = colorFromHexString(@"505053");
    roomSettingsLabel.text = @"ROOM SETTINGS";
    [_contentView addSubview:roomSettingsLabel];
    
    [roomSettingsLabel.superview
     addConstraints:@[// Pin top of tracker settings label to hr2 with offset
                      [NSLayoutConstraint constraintWithItem:roomSettingsLabel
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr2
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:marginSize],
                      // Pin left of tracker settings label to superview with offset
                      [NSLayoutConstraint constraintWithItem:roomSettingsLabel
                                                   attribute:NSLayoutAttributeLeading
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:roomSettingsLabel.superview
                                                   attribute:NSLayoutAttributeLeadingMargin
                                                  multiplier:1.0
                                                    constant:0.0]]];
    
    UIView* hr3 = createHorizontalRule(1.0);
    hr3.backgroundColor = colorFromHexString(@"#979797");
    [_contentView addSubview:hr3];
    
    [hr3.superview
     addConstraints:@[// Pin top of hr1 to bottom of streaming settings label with offset
                      [NSLayoutConstraint constraintWithItem:hr3
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:roomSettingsLabel
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:9.0],
                      // Pin leading edge of hr1 to superview
                      [NSLayoutConstraint constraintWithItem:hr3
                                                   attribute:NSLayoutAttributeCenterX
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr3.superview
                                                   attribute:NSLayoutAttributeCenterX
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Set width of hr1 to equal that of the superview
                      [NSLayoutConstraint constraintWithItem:hr3
                                                   attribute:NSLayoutAttributeWidth
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr3.superview
                                                   attribute:NSLayoutAttributeWidth
                                                  multiplier:1.0
                                                    constant:0.0]]];
    
    UIView* slamSettingsView = [[UIView alloc] init];
    slamSettingsView.translatesAutoresizingMaskIntoConstraints = NO;
    slamSettingsView.backgroundColor = colorFromHexString(@"#F1F1F1");
    slamSettingsView.layoutMargins = UIEdgeInsetsMake(marginSize, marginSize, marginSize, marginSize);
    [_contentView addSubview:slamSettingsView];
    
    [slamSettingsView.superview
     addConstraints:@[// Pin top of tracker settings view to bottom of hr3
                      [NSLayoutConstraint constraintWithItem:slamSettingsView
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr3
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin leading edge of tracker settings view to superview
                      [NSLayoutConstraint constraintWithItem:slamSettingsView
                                                   attribute:NSLayoutAttributeLeading
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:slamSettingsView.superview
                                                   attribute:NSLayoutAttributeLeading
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin trailing edge of tracker settings view to superview
                      [NSLayoutConstraint constraintWithItem:slamSettingsView
                                                   attribute:NSLayoutAttributeWidth
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:slamSettingsView.superview
                                                   attribute:NSLayoutAttributeWidth
                                                  multiplier:1.0
                                                    constant:0.0]]];

    // SLAM Settings
    {
        roomSizeLabel = [[UILabel alloc] init];
        roomSizeLabel.translatesAutoresizingMaskIntoConstraints = NO;
        roomSizeLabel.font = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
        roomSizeLabel.textColor = colorFromHexString(@"3A3A3C");
        roomSizeLabel.text = @"Room Size";
        [slamSettingsView addSubview:roomSizeLabel];
        
        [roomSizeLabel.superview
         addConstraints:@[// Pin top of room size label to top margin of superview
                          [NSLayoutConstraint constraintWithItem:roomSizeLabel
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeLabel.superview
                                                       attribute:NSLayoutAttributeTopMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin leading edge of room size label to top margin of superview
                          [NSLayoutConstraint constraintWithItem:roomSizeLabel
                                                       attribute:NSLayoutAttributeLeading
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeLabel.superview
                                                       attribute:NSLayoutAttributeLeadingMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];
        
        roomSizeSlider = [[UISlider alloc] init];
        roomSizeSlider.translatesAutoresizingMaskIntoConstraints = NO;
        roomSizeSlider.tintColor = colorFromHexString(@"#00C3FF");
        roomSizeSlider.minimumValue = 0.333;
        roomSizeSlider.maximumValue = 1.667;
        roomSizeSlider.userInteractionEnabled = YES;
        [slamSettingsView addSubview:roomSizeSlider];
        
        UILabel* roomSizeMinValueLabel = [[UILabel alloc] init];
        roomSizeMinValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
        roomSizeMinValueLabel.font = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
        roomSizeMinValueLabel.textColor = colorFromHexString(@"979797");
        roomSizeMinValueLabel.text = @"3 m³";
        [slamSettingsView addSubview:roomSizeMinValueLabel];
        
        UILabel* roomSizeMaxValueLabel = [[UILabel alloc] init];
        roomSizeMaxValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
        roomSizeMaxValueLabel.font = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
        roomSizeMaxValueLabel.textColor = colorFromHexString(@"979797");
        roomSizeMaxValueLabel.text = @"10 m³";
        [slamSettingsView addSubview:roomSizeMaxValueLabel];
        
        [roomSizeSlider.superview
         addConstraints:@[// Pin centre Y of room size slider to bottom of IR exposure label with offset
                          [NSLayoutConstraint constraintWithItem:roomSizeSlider
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeLabel
                                                       attribute:NSLayoutAttributeBottom
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin centre Y of room size min label to centre Y of IR exposure slider
                          [NSLayoutConstraint constraintWithItem:roomSizeMinValueLabel
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeSlider
                                                       attribute:NSLayoutAttributeCenterY
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin left edge of room size min label to left margin of superview
                          [NSLayoutConstraint constraintWithItem:roomSizeMinValueLabel
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeMinValueLabel.superview
                                                       attribute:NSLayoutAttributeLeftMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin right edge of room size min label to left edge of IR exposure slider with offset
                          [NSLayoutConstraint constraintWithItem:roomSizeSlider
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeMinValueLabel
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin centre Y of room size max label to centre Y of IR exposure slider
                          [NSLayoutConstraint constraintWithItem:roomSizeMaxValueLabel
                                                       attribute:NSLayoutAttributeCenterY
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeSlider
                                                       attribute:NSLayoutAttributeCenterY
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin right edge of room size max label to right margin of superview
                          [NSLayoutConstraint constraintWithItem:roomSizeMaxValueLabel
                                                       attribute:NSLayoutAttributeRight
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeMaxValueLabel.superview
                                                       attribute:NSLayoutAttributeRightMargin
                                                      multiplier:1.0
                                                        constant:0.0],
                          // Pin left edge of room size max label to right edge of IR exposure slider with offset
                          [NSLayoutConstraint constraintWithItem:roomSizeMaxValueLabel
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeSlider
                                                       attribute:NSLayoutAttributeRight
                                                      multiplier:1.0
                                                        constant:marginSize],
                          // Pin bottom of slider to bottom margin of superview
                          [NSLayoutConstraint constraintWithItem:roomSizeSlider
                                                       attribute:NSLayoutAttributeBottom
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:roomSizeSlider.superview
                                                       attribute:NSLayoutAttributeBottomMargin
                                                      multiplier:1.0
                                                        constant:0.0]]];
    }
    
    UIView* hr4 = createHorizontalRule(1.0);
    hr4.backgroundColor = colorFromHexString(@"#979797");
    [_contentView addSubview:hr4];

    [hr4.superview
     addConstraints:@[// Pin top of hr6 to bottom of streaming settings label with offset
                      [NSLayoutConstraint constraintWithItem:hr4
                                                   attribute:NSLayoutAttributeTop
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:slamSettingsView
                                                   attribute:NSLayoutAttributeBottom
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Pin leading edge of hr6 to superview
                      [NSLayoutConstraint constraintWithItem:hr4
                                                   attribute:NSLayoutAttributeCenterX
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr4.superview
                                                   attribute:NSLayoutAttributeCenterX
                                                  multiplier:1.0
                                                    constant:0.0],
                      // Set width of hr6 to equal that of the superview
                      [NSLayoutConstraint constraintWithItem:hr4
                                                   attribute:NSLayoutAttributeWidth
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:hr4.superview
                                                   attribute:NSLayoutAttributeWidth
                                                  multiplier:1.0
                                                    constant:0.0]]];
    
    [_contentView addConstraint:[NSLayoutConstraint constraintWithItem:hr4
                                                             attribute:NSLayoutAttributeBottom
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:_contentView
                                                             attribute:NSLayoutAttributeBottomMargin
                                                            multiplier:1.0
                                                              constant:0.0]];
}

- (void) addTouchResponders
{
    [irAutoExposureSwitch addTarget:self
                             action:@selector(streamingPropertiesDidChange:)
                   forControlEvents:UIControlEventValueChanged];

    [irManualExposureSlider addTarget:self
                               action:@selector(streamingPropertiesDidChange:)
                     forControlEvents:UIControlEventTouchUpInside];

    [irGainSegmentedControl addTarget:self
                               action:@selector(streamingPropertiesDidChange:)
                     forControlEvents:UIControlEventValueChanged];
    
    [roomSizeSlider addTarget:self
                       action:@selector(roomSettingsDidChange:)
             forControlEvents:UIControlEventValueChanged];
}

- (void) streamingPropertiesDidChange:(id)sender
{
    // Disable manual exposure if the IR AutoExposureSwitch is on
    irManualExposureSlider.enabled = !irAutoExposureSwitch.on;
    irManualExposureSlider.tintColor = (irManualExposureSlider.enabled ?
                                        colorFromHexString(@"#00C3FF") : colorFromHexString(@"#979797"));
    
    STCaptureSessionSensorAnalogGainMode gainMode = STCaptureSessionSensorAnalogGainMode8_0;
    switch (irGainSegmentedControl.selectedSegmentIndex)
    {
        case 0:
            gainMode = STCaptureSessionSensorAnalogGainMode1_0;
            break;
        case 1:
            gainMode = STCaptureSessionSensorAnalogGainMode2_0;
            break;
        case 2:
            gainMode = STCaptureSessionSensorAnalogGainMode4_0;
            break;
        case 3:
            gainMode = STCaptureSessionSensorAnalogGainMode8_0;
            break;
        default:
            @throw [NSException exceptionWithName:@"SettingsPopupView"
                                           reason:@"Unknown index found on gain setting."
                                         userInfo:nil];
            break;
    }
    
    if (!_delegate) return;
    [_delegate streamingPropertiesDidChange:irAutoExposureSwitch.on
                      irManualExposureValue:irManualExposureSlider.value / 1000 // send value in seconds
                          irAnalogGainValue:gainMode];
}

- (GLKVector3) getRoomVolumeSizeFromSliderScale
{
    float scale = roomSizeSlider.value;
    
    const GLKVector3 defaultVolumeSize = GLKVector3Make(6.f, 6.f, 6.f);
    GLKVector3 newVolumeSize = GLKVector3MultiplyScalar(defaultVolumeSize, scale);
    // Minimum size is 3.0m
    newVolumeSize.y = std::fmax (newVolumeSize.y, 3.0f);
    
    // Helper function.
    auto keepInRange = [](float value, float minValue, float maxValue)
    {
        if (value > maxValue) return maxValue;
        if (value < minValue) return minValue;
        return value;
    };
    
    newVolumeSize.x = keepInRange(newVolumeSize.x, 3.0f, 10.0f);
    newVolumeSize.y = keepInRange(newVolumeSize.y, 3.0f, 10.0f);
    newVolumeSize.z = keepInRange(newVolumeSize.z, 3.0f, 10.0f);
    return newVolumeSize;
}

- (void) roomSettingsDidChange:(id)sender
{
    GLKVector3 volumeSize = [self getRoomVolumeSizeFromSliderScale];
    roomSizeLabel.text = [NSString stringWithFormat:@"Room Size (%.1f × %.1f × %.1f meters)",
                          volumeSize.x,
                          volumeSize.y,
                          volumeSize.z];
    if (!_delegate) return;
    [_delegate roomSettingsDidChange:[self getRoomVolumeSizeFromSliderScale]];
}

- (void) disableNonDynamicSettingsDuringScanning
{
    roomSizeSlider.enabled = NO;
}

- (void) enableAllSettingsDuringPreview
{
    irAutoExposureSwitch.enabled = YES;
    irManualExposureSlider.enabled = YES;
    irGainSegmentedControl.enabled = YES;
    roomSizeSlider.enabled = YES;
}

@end

@implementation SettingsPopupView
{
    UIButton* _settingsIcon;
    SettingsListModal* _settingsListModal;
    
    BOOL _isSettingsListModalHidden;

    NSLayoutConstraint* widthConstraintWhenListModalIsShown;
    NSLayoutConstraint* heightConstraintWhenListModalIsShown;
    NSLayoutConstraint* widthConstraintWhenListModalIsHidden;
    NSLayoutConstraint* heightConstraintWhenListModalIsHidden;
}

- (instancetype) initWithSettingsPopupViewDelegate:(id<SettingsPopupViewDelegate>)delegate
{
    self = [super init];

    if (self) {
        [self setupComponentsWithDelegate:delegate];
    }
    return self;
}

- (void) setupComponentsWithDelegate:(id<SettingsPopupViewDelegate>)delegate
{
    // Attributes that apply to the whole content view
    self.backgroundColor = [UIColor clearColor];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    self.clipsToBounds = NO;
    
    // Settings Icon
    _settingsIcon = [[UIButton alloc] init];
    [_settingsIcon setImage:[UIImage imageNamed:@"settings-icon.png"]
                   forState:UIControlStateNormal];
    [_settingsIcon setImage:[UIImage imageNamed:@"settings-icon.png"]
                   forState:UIControlStateHighlighted];
    _settingsIcon.translatesAutoresizingMaskIntoConstraints = NO;
    _settingsIcon.contentMode = UIViewContentModeScaleAspectFit;
    [_settingsIcon addTarget:self
                      action:@selector(settingsIconPressed:)
            forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_settingsIcon];
    
    [self addConstraints:@[// Pin settings icon to top of superview
                           [NSLayoutConstraint constraintWithItem:_settingsIcon
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_settingsIcon.superview
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Pin settings icon to left of superview
                           [NSLayoutConstraint constraintWithItem:_settingsIcon
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_settingsIcon.superview
                                                        attribute:NSLayoutAttributeLeft
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Set width to 45
                           [NSLayoutConstraint constraintWithItem:_settingsIcon
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:nil
                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                       multiplier:1.0
                                                         constant:45.0],
                           // Set height to 45
                           [NSLayoutConstraint constraintWithItem:_settingsIcon
                                                        attribute:NSLayoutAttributeHeight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:nil
                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                       multiplier:1.0
                                                         constant:45.0]]];
    
    // Full Settings List Modal
    _settingsListModal = [[SettingsListModal alloc] initWithSettingsPopupViewDelegate:delegate];
    
    widthConstraintWhenListModalIsShown = [NSLayoutConstraint constraintWithItem:self
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:420.0];
    
//    const CGRect screenBounds = [[UIScreen mainScreen] bounds];
    heightConstraintWhenListModalIsShown = [NSLayoutConstraint constraintWithItem:self
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:440.0];
    
    widthConstraintWhenListModalIsHidden = [NSLayoutConstraint constraintWithItem:self
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:_settingsIcon
                                                                        attribute:NSLayoutAttributeWidth
                                                                       multiplier:1.0
                                                                         constant:0.0];
    
    heightConstraintWhenListModalIsHidden = [NSLayoutConstraint constraintWithItem:self
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:_settingsIcon
                                                                         attribute:NSLayoutAttributeHeight
                                                                        multiplier:1.0
                                                                          constant:0.0];
    
    // By default, we'll have the list modal hidden
    [self addConstraints:@[widthConstraintWhenListModalIsHidden,
                           heightConstraintWhenListModalIsHidden]];
    _isSettingsListModalHidden = YES;
}

- (void) showSettingsListModal
{
    [self addSubview:_settingsListModal];
    
    [self addConstraints:@[// Pin top settings list modal to bottom of settings icon
                           [NSLayoutConstraint constraintWithItem:_settingsListModal
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_settingsIcon
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1.0
                                                         constant:0.0],
                           // Pin left edge of settings list modal to superview
                           [NSLayoutConstraint constraintWithItem:_settingsListModal
                                                        attribute:NSLayoutAttributeLeft
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_settingsIcon
                                                        attribute:NSLayoutAttributeRight
                                                       multiplier:1.0
                                                         constant:20.0],
                           // Set width of settings list modal to be 350
                           [NSLayoutConstraint constraintWithItem:_settingsListModal
                                                        attribute:NSLayoutAttributeWidth
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:nil
                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                       multiplier:1.0
                                                         constant:350.0],
                           // Set height of settings list modal less than or equal to superview
                           [NSLayoutConstraint constraintWithItem:_settingsListModal
                                                        attribute:NSLayoutAttributeHeight
                                                        relatedBy:NSLayoutRelationLessThanOrEqual
                                                           toItem:_settingsListModal.superview
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:1.0
                                                         constant:0.0]]];
    [self bringSubviewToFront:_settingsListModal];
}

- (void) hideSettingsListModal
{
    [_settingsListModal removeFromSuperview];
}

- (void) settingsIconPressed:(UIButton*)sender
{
    if (_isSettingsListModalHidden)
    {
        _isSettingsListModalHidden = NO;
        [self removeConstraints:@[widthConstraintWhenListModalIsHidden,
                                  heightConstraintWhenListModalIsHidden]];
        [self addConstraints:@[widthConstraintWhenListModalIsShown,
                               heightConstraintWhenListModalIsShown]];
        [self showSettingsListModal];
        return;
    }

    _isSettingsListModalHidden = YES;
    [self removeConstraints:@[widthConstraintWhenListModalIsShown,
                              heightConstraintWhenListModalIsShown]];
    [self addConstraints:@[widthConstraintWhenListModalIsHidden,
                           heightConstraintWhenListModalIsHidden]];
    [self hideSettingsListModal];
}

- (void) disableNonDynamicSettingsDuringScanning
{
    [_settingsListModal disableNonDynamicSettingsDuringScanning];
}

- (void) enableAllSettingsDuringPreview
{
    [_settingsListModal enableAllSettingsDuringPreview];
}

@end
