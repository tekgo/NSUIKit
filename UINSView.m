//
//  UIView.m
//  NSUIKit
//
//  Created by Patrick Winchell on 1/11/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import "UINSView.h"

@implementation UIView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self performSelector:@selector(viewDidLoad) withObject:nil afterDelay:1];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self performSelector:@selector(viewDidLoad) withObject:nil afterDelay:1];
    }
    return self;
}

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self performSelector:@selector(viewDidLoad) withObject:nil afterDelay:1];
    }
    return self;
}

-(void)setNeedsDisplay
{
    [self setNeedsDisplay:YES];
}

+ (void)beginAnimations:(NSString *)animationID context:(void *)context{
    
}

+ (void)setAnimationDuration:(CFTimeInterval)duration {
    
}

+ (void)setAnimationCurve:(UIViewAnimationCurve)curve {
    
}

+ (void)commitAnimations {
    
}

+ (void)setAnimationDelay:(NSTimeInterval)delay {
    
}

+ (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations {
    animations();
}

+ (void)animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion {
    animations();
    completion(true);
}

- (void)didReceiveMemoryWarning {
    
}
-(void)viewDidLoad {
    
}

-(UINSView*)view {
    return self;
}

-(void)setAlpha:(CGFloat)alpha {
    
}

-(CGFloat)alpha {
    
    return 1.0;
}

-(void)setBackgroundColor:(NSColor *)backgroundColor {
    CALayer *viewLayer = [CALayer layer];
    [viewLayer setBackgroundColor:[backgroundColor CGColor]];
    [self setWantsLayer:YES]; // view's backing store is using a Core Animation Layer
    [self setLayer:viewLayer];
}

-(void)setFrame:(NSRect)frame {
    if(frame.origin.y != 0) {
        frame.origin.y = self.superview.frame.size.height - frame.size.height - frame.origin.y;
    }
    [super setFrame:frame];
}

@end

@implementation UIViewController

@end