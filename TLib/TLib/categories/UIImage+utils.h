//
//  UIImage+utils.h
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GraphHelper.h"

@interface UIImage (utils)

#if (TARGET_OS_IPHONE && __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_4_0)

// 转为灰度图
+ (UIImage *) grayishImage:(UIImage *)inputImage;

#endif

// 生成圆角图片
// @param 椭圆宽
// @param 椭圆高
+ (UIImage *) createRoundedRectImage:(UIImage*)image
                                Size:(CGSize)size
                           OvalWidth:(float)width
                          OvalHeight:(float)height;

+ (UIImage *) createRoundedRectImage:(UIImage*)image
                           OvalWidth:(float)width
                          OvalHeight:(float)height;

///////////////

-(UIImage *)appendStringInCenter:(NSString *)string
                        WithFont:(UIFont *)font
                       TextColor:(UIColor *)color;

-(UIImage *)appendString:(NSString *)string
                WithFont:(UIFont *)font
               TextColor:(UIColor *)color
                  InRect:(CGRect)bounds;

@end
