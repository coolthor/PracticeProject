//
//  FBLoginViewController.m
//  FBLogin01
//
//  Created by Thor Lin on 13/6/22.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "FBLoginViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface FBLoginViewController ()

@end

@implementation FBLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    FBLoginView *loginview = [[FBLoginView alloc] init];
    loginview.frame = CGRectOffset(loginview.frame, 5, 5);
    loginview.delegate =self;
    
    [self.view addSubview:loginview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
