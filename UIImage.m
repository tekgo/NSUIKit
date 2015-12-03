//
//  UIImage.m
//  NSUIKit
//
//  Created by Patrick Winchell on 1/7/15.
//  Copyright (c) 2015 SuperPartyAwesome. All rights reserved.
//

#import "UIImage.h"

@implementation UIImage

+(UIImage*) imageNamed:(NSString*)name {
    NSBundle *programBundle = [NSBundle bundleForClass:[self class]];
    NSImage *image = [programBundle imageForResource:name];
    return [[UIImage alloc] initWithData:image.TIFFRepresentation];
}

+ (UIImage *)imageWithCGImage:(CGImageRef)imageRef scale:(CGFloat)scale orientation:(UIImageOrientation)orientation {
    CGSize size = CGSizeMake(CGImageGetWidth(imageRef) / scale, CGImageGetHeight(imageRef) / scale);
    UIImage * image = [[UIImage alloc] initWithCGImage:imageRef size:size];
    if(orientation == UIImageOrientationUpMirrored) {
        return [UIImage flipImage:image];
    }
    return [[UIImage alloc] initWithCGImage:imageRef size:size];
}

-(float)scale {
    NSImageRep *rep = [[self representations] objectAtIndex:0];
    NSSize imageSize = NSMakeSize(rep.pixelsWide, rep.pixelsHigh);
    return imageSize.width/self.size.width;
}

-(UIImageOrientation)imageOrientation {
    return UIImageOrientationUp;
}

-(CGImageRef)CGImage {
    NSRect pRect = NSMakeRect( 0, 0, [self size].width, [self size].height);
    return [self CGImageForProposedRect:&pRect context:NULL hints:NULL];
}

+ (UIImage *)flipImage:(UIImage *)image
{
    UIImage *existingImage = image;
    NSSize existingSize = [existingImage size];
    NSSize newSize = NSMakeSize(existingSize.width, existingSize.height);
    UIImage *flipedImage = [[UIImage alloc] initWithSize:newSize];
    
    [flipedImage lockFocus];
    [[NSGraphicsContext currentContext] setImageInterpolation:NSImageInterpolationHigh];
    
    NSAffineTransform *t = [NSAffineTransform transform];
    
    [t scaleXBy:-1.0 yBy:1.0];
    [t translateXBy:-existingSize.width yBy:0];
    [t concat];
    
    [existingImage drawAtPoint:NSZeroPoint fromRect:NSMakeRect(0, 0, newSize.width, newSize.height) operation:NSCompositeSourceOver fraction:1.0];
    
    [flipedImage unlockFocus];
    
    return flipedImage;
}



@end
