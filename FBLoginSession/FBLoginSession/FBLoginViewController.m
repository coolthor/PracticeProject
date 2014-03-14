//
//  FBLoginViewController.m
//  FBLoginSession
//
//  Created by Thor Lin on 13/6/28.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authButtonAction:(id)sender {
    FBLoginAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    // The person using the app has initiated a login, so call the openSession method
    // and show the login UX if necessary.
    [appDelegate openSessionWithAllowLoginUI:YES];
}

@end
