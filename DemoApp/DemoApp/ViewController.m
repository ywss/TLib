//
//  ViewController.m
//  DemoApp
//
//  Created by t on 12-12-7.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // MARK: -
    // MARK: 灰色图
    
    UIImage *img = [UIImage imageNamed:@"xiong.jpg"];
    img = [UIImage grayishImage:img];
    self.view.backgroundColor = [UIColor colorWithPatternImage:img];
    
    // MARK: -
    // MARK: 圆角图
    img = [UIImage imageNamed:@"aaa"];
    img = [UIImage createRoundedRectImage:img OvalWidth:30.0f OvalHeight:30.f];
    
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(50, 20, 50, 50);
    [self.view addSubview:imgView];
    [imgView release];
    
    // MARK: -
    ViewMask *mask = [[ViewMask alloc] initWithFrame:CGRectMake(100, 60, 100, 100)];
    
    imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"aaa"]];
    imgView.layer.mask = mask.layer;
    [self.view addSubview:imgView];
    [imgView release];
    
    // MARK: -
    RoundedView *view = [[RoundedView alloc] initWithFrame:CGRectMake(200, 110, 30, 30)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [view release];
    
    
    // MARK: -
    imgView = [[RoundedImageView alloc] initWithFrame:CGRectMake(300, 60, 80, 80)];
    imgView.image = [UIImage imageNamed:@"aaa"];
    [self.view addSubview:imgView];
    [imgView release];
    
    
    // MARK: -
    // MARK: 标签
    
    UILabel *lbl = [UILabel genLabelWithFrame:CGRectMake(10, 10, 200, 30)
                                         Text:@"test"
                                 TextFontSize:12.0
                                    TextColor:[UIColor blackColor]
                              BackgroundColor:[UIColor redColor]
                                       InView:self.view];
    
    assert(lbl != nil);
    
    lbl.backgroundColor = [UIColor clearColor];
}

@end
