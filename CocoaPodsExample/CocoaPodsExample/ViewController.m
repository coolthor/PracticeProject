//
//  ViewController.m
//  CocoaPodsExample
//
//  Created by Thor Lin on 2014/3/9.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize showsScrollView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    showsScrollView.delegate =self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pageChanged:(id)sender {
}
@end
