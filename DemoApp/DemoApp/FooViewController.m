//
//  FooViewController.m
//  DemoApp
//
//  Created by t on 12-12-25.
//  Copyright (c) 2012年 t. All rights reserved.
//

#import "FooViewController.h"

NSString * foo = @"foo";

@interface FooViewController ()

@end

@implementation FooViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
