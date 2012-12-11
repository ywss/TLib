//
//  RoundedView.h
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewMask.h"
#import <QuartzCore/QuartzCore.h>

#ifndef DEFAULT_CORNER_RADIUS
#define DEFAULT_CORNER_RADIUS   5
#endif

@interface RoundedView : UIView

@property (nonatomic, assign) CGFloat cornerRadius;

@end
