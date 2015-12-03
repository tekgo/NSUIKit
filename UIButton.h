//
//  UIButton.h
//  NSUIKit
//
//  Created by Patrick Winchell on 1/23/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include "UILabel.h"

enum {
    UIControlStateNormal                = 0,
    UIControlStateHighlighted           = 1 << 0,
    UIControlStateDisabled              = 1 << 1,
    UIControlStateSelected              = 1 << 2,
    UIControlStateApplication           = 0x00FF0000 ,
    UIControlStateReserved              = 0xFF000000
};

typedef NSUInteger UIControlState;

@interface UIButton : NSButton

- (void)setTitleColor:(NSColor *)color forState:(UIControlState)state;

- (void)setTitle:(NSString *)title forState:(UIControlState)state;

@property(nonatomic, readonly, retain) UINSLabel *titleLabel;

@property(nonatomic) CGFloat alpha;

@property(nonatomic) NSString *text;
@property(nonatomic) NSColor *textColor;

@end
