//
//  RoundedImageView.m
//  TLib
//
//  Created by t on 12-12-11.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "RoundedImageView.h"

@interface RoundedImageView ()

@property (nonatomic, retain) ViewMask * mask;

@end

@implementation RoundedImageView

- (void)setup
{
    _mask = [[ViewMask alloc] initWithFrame:self.bounds];
    self.layer.mask = _mask.layer;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return  self;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _mask.cornerRadius = cornerRadius;
}

- (CGFloat)cornerRadius
{
    return _mask.cornerRadius;
}

- (void)dealloc
{
    [_mask release];
    _mask = nil;
    
    [super dealloc];
}

@end
