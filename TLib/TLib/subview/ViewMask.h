//
//  ViewMask.h
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum ViewMaskCornerStyle {
    ViewMaskCornerStyleAll,
    ViewMaskCornerStyleLeftOnly,
    ViewMaskCornerStyleRightOnly,
} ViewMaskCornerStyle;

@interface ViewMask : UIView
@property (nonatomic, assign) ViewMaskCornerStyle cornerStyle;
@property (nonatomic, assign) CGFloat cornerRadius;
@end
