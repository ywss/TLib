//
//  ViewMask.m
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "ViewMask.h"

#define kDefaultCornerRadius 3.f

@implementation ViewMask

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.userInteractionEnabled = NO;
        self.cornerStyle = ViewMaskCornerStyleAll;
        self.cornerRadius = kDefaultCornerRadius;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat minx = CGRectGetMinX(rect);
    CGFloat midx = CGRectGetMidX(rect);
    CGFloat maxx = CGRectGetMaxX(rect);
    CGFloat miny = CGRectGetMinY(rect);
    CGFloat midy = CGRectGetMidY(rect);
    CGFloat maxy = CGRectGetMaxY(rect);
    
	CGContextMoveToPoint(context, minx, midy);
    
    switch (_cornerStyle) {
        case ViewMaskCornerStyleLeftOnly:
            CGContextAddArcToPoint(context, minx, miny, midx, miny, _cornerRadius);
            CGContextAddLineToPoint(context, maxx, miny);
            CGContextAddLineToPoint(context, maxx, maxy);
            CGContextAddLineToPoint(context, midx, maxy);
            CGContextAddArcToPoint(context, minx, maxy, minx, midy, _cornerRadius);
            break;
            
        case ViewMaskCornerStyleRightOnly:
            // move to bottom-left
            CGContextAddLineToPoint(context, minx, miny);
            // move to botttom-mid
            CGContextAddLineToPoint(context, midx, miny);
            // add an arc in the bottom right corner
            CGContextAddArcToPoint(context, maxx, miny, maxx, midy, _cornerRadius);
            // add an arc in the top right corner
            CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, _cornerRadius);
            // move to top-left
            CGContextAddLineToPoint(context, minx, maxy);
            break;
            
        case ViewMaskCornerStyleAll:
        default:
            CGContextAddArcToPoint(context, minx, miny, midx, miny, _cornerRadius);
            CGContextAddArcToPoint(context, maxx, miny, maxx, midy, _cornerRadius);
            CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, _cornerRadius);
            CGContextAddArcToPoint(context, minx, maxy, minx, midy, _cornerRadius);
            break;
    }
    
    CGContextClosePath(context);
    CGContextFillPath(context);
}

@end
