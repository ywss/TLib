//
//  UIButton+Ext.h
//  Twork
//
//  Created by t on 12-11-15.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Ext)

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
            BackgroundImageName:(NSString*)imageName
            BgImageLeftCapWidth:(NSInteger)leftCapWidth
            BgImageTopCapHeight:(NSInteger)topCapHeight
                         InView:(UIView*)superView;

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
                BackgroundImage:(UIImage*)image
                         InView:(UIView*)superView;

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
            BackgroundImageName:(NSString*)imageName
                         InView:(UIView*)superView;

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
                titleEdgeInsets:(UIEdgeInsets)edgeInsets
            BackgroundImageName:(NSString*)imageName
                BackgroundColor:(UIColor*)bgColor
                         Target:(id)target
                         Action:(SEL)aSelector
                            Tag:(NSInteger)tag
                         InView:(UIView*)superView;

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
                titleEdgeInsets:(UIEdgeInsets)edgeInsets
                BackgroundImage:(UIImage*)image
                BackgroundColor:(UIColor*)bgColor
                         Target:(id)target
                         Action:(SEL)aSelector
                            Tag:(NSInteger)tag
                         InView:(UIView*)superView;

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                      TitleFont:(UIFont*)font
                     TitleColor:(UIColor*)color
                titleEdgeInsets:(UIEdgeInsets)edgeInsets
                BackgroundImage:(UIImage*)image
                BackgroundColor:(UIColor*)bgColor
                         Target:(id)target
                         Action:(SEL)aSelector
                            Tag:(NSInteger)tag
                         InView:(UIView*)superView;

@end
