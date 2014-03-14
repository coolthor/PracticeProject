//
//  ReadTextViewController.m
//  ReadText
//
//  Created by Thor Lin on 13/7/31.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "ReadTextViewController.h"

@interface ReadTextViewController ()

@end

@implementation ReadTextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"poem" ofType:@"txt"];
    NSLog(@"path %@",path);
    NSError *error;
    NSString * poem = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    textView.text =poem;
    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
