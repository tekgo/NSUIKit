//
//  UILabel.m
//  NSUIKit
//
//  Created by Patrick Winchell on 1/23/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import "UILabel.h"

@implementation UINSLabel

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setBackgroundColor:[NSColor clearColor]];
    }
    return self;
}

-(void)setText:(NSString *)text {
    [self setStringValue:text];
    _text = text;
}

-(void)setFrame:(NSRect)frame {
    if(frame.origin.y != 0) {
        frame.origin.y = self.superview.frame.size.height - frame.size.height - frame.origin.y;
    }
    [super setFrame:frame];
}

@end
