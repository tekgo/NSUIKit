//
//  UItoNSCompat.h
//  NSUIKit
//
//  Created by Patrick Winchell on 1/11/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#if TARGET_OS_MAC

#import <Cocoa/Cocoa.h>
#include "NSView+Additions.h"
#include "UIImage.h"
#include "UINSView.h"
#include "UIButton.h"
#include "UILabel.h"
#include "UIImageView.h"

#define UIView   UINSView
#define UILabel   UINSLabel
#define UIViewController UINSViewController
#define UIColor  NSColor
#define UITouch  NSTouch
#define UIFont  NSFont
#define UIRectFill NSRectFill
#define UITrackingRunLoopMode NSEventTrackingRunLoopMode
#define UIWindow NSWindow
#define UIImageView NSImageView
#define UIEvent NSEvent
#define UIResponder NSResponder
#define UIApplicationDelegate NSApplicationDelegate
typedef NSRect CGRect;
#endif
#if TARGET_OS_IOS
#import <UIKit/UIKit.h>

#endif