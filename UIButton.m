//
//  UIButton.m
//  NSUIKit
//
//  Created by Patrick Winchell on 1/23/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import "UIButton.h"

@implementation UIButton

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        //[self setBackgroundColor:[NSColor redColor]];
        self.bordered = false;
        [self setTitleColor:[NSColor redColor] forState:UIControlStateNormal];
        [self.cell setBackgroundColor:[NSColor colorWithCalibratedRed:0 green:0 blue:0 alpha:.25]];
    }
    return self;
}

-(void)setBackgroundColor:(NSColor *)backgroundColor {
    CALayer *viewLayer = [CALayer layer];
    [viewLayer setBackgroundColor:[backgroundColor CGColor]];
    [self setWantsLayer:YES]; // view's backing store is using a Core Animation Layer
    [self setLayer:viewLayer];
}

- (void)setTitleColor:(NSColor *)color forState:(UIControlState)state {
    /*NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setAlignment:NSCenterTextAlignment];
    NSDictionary *attrsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:color, NSForegroundColorAttributeName, style, NSParagraphStyleAttributeName, nil];
    NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:self.text attributes:attrsDictionary];
    
    [self setAttributedTitle:attrString];*/
    self.textColor = color;
    if(self.text) {
    NSMutableAttributedString *attrTitle =
    [[NSMutableAttributedString alloc] initWithString:self.text];
    NSUInteger len = [attrTitle length];
    NSRange range = NSMakeRange(0, len);
    [attrTitle addAttribute:NSForegroundColorAttributeName value:self.textColor range:range];
    [attrTitle fixAttributesInRange:range];
    [self setAttributedTitle:attrTitle];
    }
    
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    self.title = title;
    
    self.text = title;
    if(self.textColor) {
        [self setTitleColor:self.textColor forState:state];
    }
}

-(void)setFrame:(NSRect)frame {
    if(frame.origin.y != 0) {
        frame.origin.y = self.superview.frame.size.height - frame.size.height - frame.origin.y;
    }
    [super setFrame:frame];
}

@end
