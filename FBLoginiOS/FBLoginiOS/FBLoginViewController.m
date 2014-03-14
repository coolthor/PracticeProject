//
//  FBLoginViewController.m
//  FBLoginiOS
//
//  Created by Thor Lin on 13/6/24.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "FBLoginViewController.h"

@interface FBLoginViewController ()

@end

@implementation FBLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    FBLoginView * LoginView = [[FBLoginView alloc] init];
    LoginView.frame = CGRectOffset(LoginView.frame, 5, 5);
    
    [self.view addSubview:LoginView];
    [self.view bringSubviewToFront:LoginView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
