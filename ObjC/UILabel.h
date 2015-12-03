//
//  UILabel.h
//  NSUIKit
//
//  Created by Patrick Winchell on 1/23/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#ifndef UILabelh
#define UILabelh

@interface UINSLabel : NSTextField

@property(nonatomic, copy) NSString *text;

@property(nonatomic) CGFloat alpha;

@end
#endif