//
//  UIView.h
//  NSUIKit
//
//  Created by Patrick Winchell on 1/11/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "UINSKit.h"


typedef enum {
    UIViewAnimationCurveEaseInOut,
    UIViewAnimationCurveEaseIn,
    UIViewAnimationCurveEaseOut,
    UIViewAnimationCurveLinear
} UIViewAnimationCurve;

@interface UINSView : NSView

-(void)setNeedsDisplay;

+ (void)beginAnimations:(NSString *)animationID context:(void *)context;

+ (void)setAnimationDuration:(CFTimeInterval)duration;

+ (void)setAnimationCurve:(UIViewAnimationCurve)curve;

+ (void)commitAnimations;

+ (void)setAnimationDelay:(NSTimeInterval)delay;

+ (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations;

+ (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion;


- (void)didReceiveMemoryWarning;
-(void)viewDidLoad;

@property (nonatomic) UINSView * view;

@property(nonatomic, copy) NSColor *backgroundColor;

@property(nonatomic) CGFloat alpha;

@end

@interface UINSViewController : UINSView


@end
