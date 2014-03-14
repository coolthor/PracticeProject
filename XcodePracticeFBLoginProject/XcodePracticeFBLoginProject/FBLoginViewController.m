//
//  FBLoginViewController.m
//  XcodePracticeFBLoginProject
//
//  Created by Thor Lin on 13/6/24.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "FBLoginViewController.h"

#import "FBLoginAppDelegate.h"

@interface FBLoginViewController ()

@end

@implementation FBLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    FBLoginView *loginview = [[FBLoginView alloc] init];
    //loginview.frame = CGRectOffset(loginview.frame, 5, 5);
    loginview.frame = CGRectOffset(loginview.frame,
                                   (self.view.center.x - (loginview.frame.size.width / 2)),
                                   5);
    [self.view addSubview:loginview];
    [loginview sizeToFit];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
