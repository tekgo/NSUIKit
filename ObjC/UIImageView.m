//
//  UIImageView.m
//  NSUIKit
//
//  Created by Patrick Winchell on 1/27/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import "UIImageView.h"

@implementation UIImageView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

-(void)setFrame:(NSRect)frame {
    if(frame.origin.y != 0) {
        frame.origin.y = self.superview.frame.size.height - frame.size.height - frame.origin.y;
    }
    [super setFrame:frame];
}

@end
