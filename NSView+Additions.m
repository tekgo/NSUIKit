//
//  NSView+Additions.m
//  NSUIKit
//
//  Created by Patrick Winchell on 1/23/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import "NSView+Additions.h"

@implementation NSView (NSViewPlusUIView)

-(void)setAlpha:(CGFloat)alpha {
    
}

-(CGFloat)alpha {
    
    return 1.0;
}

-(void)setBackgroundColor:(NSColor *)backgroundColor {
    CALayer *viewLayer = [CALayer layer];
    [viewLayer setBackgroundColor:[backgroundColor CGColor]];
    [self setLayer:viewLayer];
    [self setWantsLayer:YES]; // view's backing store is using a Core Animation Layer
    [self setLayer:viewLayer];
}

-(NSColor*)backgroundColor {
    return [NSColor whiteColor];
}

@end
