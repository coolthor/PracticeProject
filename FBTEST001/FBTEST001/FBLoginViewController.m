//
//  FBLoginViewController.m
//  FBTEST001
//
//  Created by Thor Lin on 13/6/24.
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
    FBLoginView *LoginView = [[FBLoginView alloc]init];
    LoginView.frame = CGRectOffset(LoginView.frame, 5, 5);
    LoginView.delegate = self;
    
    [self.view addSubview:LoginView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [FBLoginView class];
    //...
    return YES;
}
@end
