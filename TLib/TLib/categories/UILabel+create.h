//
//  UILabel+create.h
//  TLib
//
//  Created by t on 12-12-7.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (create)

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView;


+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag
                       InView:(UIView*)superView;

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag
                       InView:(UIView*)superView;

@end
