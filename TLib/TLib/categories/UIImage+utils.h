//
//  UIImage+utils.h
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (utils)

#if (TARGET_OS_IPHONE && __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_4_0)

// 转为灰度图
- (UIImage *)grayishImage:(UIImage *)inputImage;

#endif

@end
