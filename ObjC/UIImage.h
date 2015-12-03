//
//  UIImage.h
//  NSUIKit
//
//  Created by Patrick Winchell on 1/7/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef enum {
    UIImageOrientationUp ,
    UIImageOrientationDown ,   // 180 deg  rotation
    UIImageOrientationLeft ,   // 90 deg  CW
    UIImageOrientationRight ,   // 90 deg  CCW
    UIImageOrientationUpMirrored ,    // as  above  but  image  mirrored  along
    // other  axis. horizontal  flip
    UIImageOrientationDownMirrored ,  // horizontal  flip
    UIImageOrientationLeftMirrored ,  // vertical  flip
    UIImageOrientationRightMirrored , // vertical  flip
} UIImageOrientation;

@interface UIImage : NSImage

+ (UIImage*) imageNamed:(NSString*)name;

+ (UIImage *)imageWithCGImage:(CGImageRef)imageRef scale:(CGFloat)scale orientation:(UIImageOrientation)orientation;

@property(nonatomic,readonly) float scale;

@property(nonatomic,readonly) UIImageOrientation imageOrientation;

@property(nonatomic,readonly) CGImageRef CGImage;

@end
