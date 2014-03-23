//
//  AntiBlackBoxrResourceViewController.m
//  AntiBlackBox
//
//  Created by Thor Lin on 2014/3/23.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "AntiBlackBoxrResourceViewController.h"

@interface AntiBlackBoxrResourceViewController ()

@end

@implementation AntiBlackBoxrResourceViewController
@synthesize myWebView=_myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSURL *url = [NSURL URLWithString:@"https://docs.google.com/spreadsheets/d/1kC3DIWpASDBaN4Yj8ggeoVU4lBH0DcPUQqq8lxjXXiI/pubhtml"];
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
    [_myWebView loadRequest:request];
    

}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    _myWebView.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
