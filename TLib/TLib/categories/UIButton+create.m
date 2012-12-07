//
//  UIButton+Ext.m
//  Twork
//
//  Created by t on 12-11-15.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "UIButton+create.h"

@implementation UIButton (Ext)

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
            BackgroundImageName:(NSString*)imageName
            BgImageLeftCapWidth:(NSInteger)leftCapWidth
            BgImageTopCapHeight:(NSInteger)topCapHeight
                         InView:(UIView*)superView{
    
    UIImage *img = [UIImage imageNamed:imageName];
    img = [img stretchableImageWithLeftCapWidth:leftCapWidth topCapHeight:topCapHeight];
    
    return [UIButton genButtonWithFrame:frame
                                  Title:title
                          TitleFontSize:size
                             TitleColor:color
                        titleEdgeInsets:UIEdgeInsetsZero
                        BackgroundImage:img
                        BackgroundColor:nil
                                 Target:nil
                                 Action:NULL
                                    Tag:0
                                 InView:superView];
}

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
                BackgroundImage:(UIImage*)image
                         InView:(UIView*)superView{
    
    return [UIButton genButtonWithFrame:frame
                                  Title:title
                          TitleFontSize:size
                             TitleColor:color
                        titleEdgeInsets:UIEdgeInsetsZero
                        BackgroundImage:image
                        BackgroundColor:nil
                                 Target:nil
                                 Action:NULL
                                    Tag:0
                                 InView:superView];
}

+ (UIButton*)genButtonWithFrame:(CGRect)frame
                          Title:(NSString*)title
                  TitleFontSize:(CGFloat)size
                     TitleColor:(UIColor*)color
            BackgroundImageName:(NSString*)imageName
                         InView:(UIView*)superView{
    
    return [UIButton genButtonWithFrame:frame
                                  Title:title
                          TitleFontSize:size
                             TitleColor:color
                        titleEdgeInsets:UIEdgeInsetsZero
                    BackgroundImageName:imageName
                        BackgroundColor:nil
                                 Target:nil
                                 Action:NULL
                                    Tag:0
                                 InView:superView];
}

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
                         InView:(UIView*)superView{
    
    return [UIButton genButtonWithFrame:frame
                                  Title:title
                          TitleFontSize:size
                             TitleColor:color
                        titleEdgeInsets:edgeInsets
                        BackgroundImage:[UIImage imageNamed:imageName]
                        BackgroundColor:bgColor
                                 Target:target
                                 Action:aSelector
                                    Tag:tag
                                 InView:superView];
}

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
                         InView:(UIView*)superView{
    
    return [UIButton genButtonWithFrame:frame
                                  Title:title
                              TitleFont:[UIFont systemFontOfSize:size]
                             TitleColor:color
                        titleEdgeInsets:edgeInsets
                        BackgroundImage:image
                        BackgroundColor:bgColor
                                 Target:target
                                 Action:aSelector
                                    Tag:tag
                                 InView:superView];
}

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
                         InView:(UIView*)superView{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.tag = tag;
    btn.titleEdgeInsets = edgeInsets;
    
    if (font) {
        btn.titleLabel.font = font;
    }
    
    if (color) {
        [btn setTitleColor:color forState:UIControlStateNormal];
    }
    
    if (bgColor) {
        [btn setBackgroundColor:bgColor];
    }
    
    if (title) {
        [btn setTitle:title forState:UIControlStateNormal];
    }
    
    if (image) {
        [btn setBackgroundImage:image forState:UIControlStateNormal];
    }
    
    if (target != nil && aSelector != NULL) {
        [btn addTarget:target action:aSelector forControlEvents:UIControlEventTouchUpInside];
    }
    
    if (superView) {
        [superView addSubview:btn];
    }
    
    return btn;
}

@end
