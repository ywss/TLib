//
//  UILabel+create.m
//  TLib
//
//  Created by t on 12-12-7.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "UILabel+create.h"

@implementation UILabel (create)

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:[UIFont systemFontOfSize:fontSize]
                            TextColor:textColor
                        TextAlignment:NSTextAlignmentLeft
                      BackgroundColor:bgColor
                                  Tag:0
                               InView:superView];
    
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:font
                            TextColor:textColor
                        TextAlignment:NSTextAlignmentLeft
                      BackgroundColor:bgColor
                                  Tag:0
                               InView:superView];
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:[UIFont systemFontOfSize:fontSize]
                            TextColor:textColor
                        TextAlignment:NSTextAlignmentLeft
                      BackgroundColor:bgColor
                                  Tag:0
                               InView:nil];
    
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:font
                            TextColor:textColor
                        TextAlignment:NSTextAlignmentLeft
                      BackgroundColor:bgColor
                                  Tag:0
                               InView:nil];
    
}


+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag{
    
    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:[UIFont systemFontOfSize:fontSize]
                            TextColor:textColor
                        TextAlignment:NSTextAlignmentLeft
                      BackgroundColor:bgColor
                                  Tag:tag
                               InView:nil];
    
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:font
                            TextColor:textColor
                        TextAlignment:NSTextAlignmentLeft
                      BackgroundColor:bgColor
                                  Tag:tag
                               InView:nil];
    
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:[UIFont systemFontOfSize:fontSize]
                            TextColor:textColor
                        TextAlignment:alignment
                      BackgroundColor:bgColor
                                  Tag:0
                               InView:superView];
    
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                       InView:(UIView*)superView{
    
    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:font
                            TextColor:textColor
                        TextAlignment:alignment
                      BackgroundColor:bgColor
                                  Tag:0
                               InView:superView];
    
}



+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag{

    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:[UIFont systemFontOfSize:fontSize]
                            TextColor:textColor
                        TextAlignment:alignment
                      BackgroundColor:bgColor
                                  Tag:tag
                               InView:nil];
    
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag{
    
    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:font
                            TextColor:textColor
                        TextAlignment:alignment
                      BackgroundColor:bgColor
                                  Tag:tag
                               InView:nil];
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                 TextFontSize:(CGFloat)fontSize
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag
                       InView:(UIView*)superView{
    
    return [UILabel genLabelWithFrame:frame
                                 Text:text
                             TextFont:[UIFont systemFontOfSize:fontSize]
                            TextColor:textColor
                        TextAlignment:alignment
                      BackgroundColor:bgColor
                                  Tag:tag
                               InView:nil];
}

+ (UILabel*)genLabelWithFrame:(CGRect)frame
                         Text:(NSString*)text
                     TextFont:(UIFont*)font
                    TextColor:(UIColor*)textColor
                TextAlignment:(NSTextAlignment)alignment
              BackgroundColor:(UIColor*)bgColor
                          Tag:(NSInteger)tag
                       InView:(UIView*)superView{
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:frame];
    lbl.textAlignment = alignment;
    lbl.tag = tag;
    
    if (text) {
        lbl.text = text;
    }
    
    if (font) {
        lbl.font = font;
    }
    
    if (textColor) {
        lbl.textColor = textColor;
    }
    
    if (bgColor) {
        lbl.backgroundColor = bgColor;
    }
    
    if (superView) {
        [superView addSubview:lbl];
#if !(__has_feature(objc_arc))
        
        [lbl release];
        
#endif
    }
    else{
#if !(__has_feature(objc_arc))
        
        [lbl autorelease];
        
#endif
    }
    
    return lbl;
}

@end
