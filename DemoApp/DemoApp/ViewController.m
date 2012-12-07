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
	

    UILabel *lbl = [UILabel genLabelWithFrame:CGRectMake(10, 10, 200, 30)
                                         Text:@"test"
                                 TextFontSize:12.0
                                    TextColor:[UIColor blackColor]
                              BackgroundColor:[UIColor redColor]
                                       InView:self.view];
    
    assert(lbl != nil);
    
    lbl.backgroundColor = [UIColor clearColor];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
