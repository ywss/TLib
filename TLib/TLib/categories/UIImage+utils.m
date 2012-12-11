//
//  UIImage+utils.m
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "UIImage+utils.h"

@implementation UIImage (utils)

#if (TARGET_OS_IPHONE && __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_4_0)

// Transform the image in grayscale.
- (UIImage *)grayishImage:(UIImage *)inputImage
{
    // Create a graphic context.
    UIGraphicsBeginImageContextWithOptions(inputImage.size, YES, 1.0);
    CGRect imageRect = CGRectMake(0, 0, inputImage.size.width, inputImage.size.height);
    
    // Draw the image with the luminosity blend mode.
    // On top of a white background, this will give a black and white image.
    [inputImage drawInRect:imageRect blendMode:kCGBlendModeLuminosity alpha:1.0];
    
    // Get the resulting image.
    UIImage *filteredImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return filteredImage;
}

#endif

@end
