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
+ (UIImage *)grayishImage:(UIImage *)inputImage{
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


+ (UIImage *) createRoundedRectImage:(UIImage*)image
                                Size:(CGSize)size
                           OvalWidth:(float)width
                          OvalHeight:(float)height{

    int w = size.width;
    int h = size.height;
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(NULL, w, h, 8, 4 * w, colorSpace, kCGImageAlphaPremultipliedFirst);
    CGColorSpaceRelease(colorSpace);
    
    CGRect rect = CGRectMake(0, 0, w, h);
    
    CGContextBeginPath(context);
    addRoundedRectToPath(context, rect, width, height);
    CGContextClosePath(context);
    
    CGContextClip(context);
    CGContextDrawImage(context, CGRectMake(0, 0, w, h), image.CGImage);
    
    CGImageRef imageMasked = CGBitmapContextCreateImage(context);
    CGContextRelease(context);
    UIImage *img = [UIImage imageWithCGImage:imageMasked];
    CGImageRelease(imageMasked);
    
    return img;
}

+ (UIImage *) createRoundedRectImage:(UIImage*)image
                           OvalWidth:(float)width
                          OvalHeight:(float)height{
    
    return [UIImage createRoundedRectImage:image
                                      Size:image.size
                                 OvalWidth:width
                                OvalHeight:height];
}

///////////////////////////////////////////////////////////////
// MARK: -

-(UIImage *)appendStringInCenter:(NSString *)string
                        WithFont:(UIFont *)font
                       TextColor:(UIColor *)color{
    
    CGFloat textHeight = font.lineHeight;
    CGRect bounds = CGRectMake(0,
                               (self.size.height - textHeight) / 2,
                               self.size.width,
                               textHeight);
    
    return [self appendString:string
                     WithFont:font
                    TextColor:color
                       InRect:bounds];
}

-(UIImage *)appendString:(NSString *)string
                WithFont:(UIFont *)font
               TextColor:(UIColor *)color
                  InRect:(CGRect)bounds{
    
    if(UIGraphicsBeginImageContextWithOptions != NULL){
        UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    }
    else{
        UIGraphicsBeginImageContext(self.size);
    }
    
    [self drawAtPoint:CGPointMake(0, 0)];
    
    // Draw the string in the center of the image
    [color set];
        
    [string drawInRect:bounds
              withFont:font
         lineBreakMode:UILineBreakModeClip
             alignment:UITextAlignmentCenter];
    
    UIImage* result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return result;
}

@end
