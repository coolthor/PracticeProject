//
//  SendgGoodsDetermineSystemViewController.m
//  SendgGoodsDetermineSystem
//
//  Created by Thor Lin on 2014/3/9.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "SendgGoodsDetermineSystemViewController.h"

@interface SendgGoodsDetermineSystemViewController ()

@end

@implementation SendgGoodsDetermineSystemViewController
@synthesize mySecQuestion;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    mySecQuestion.numberOfLines = 0;
    mySecQuestion.text = @"2. 箱最長邊是否超過\n30 cm";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
