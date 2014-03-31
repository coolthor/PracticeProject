//
//  AntiBlackBoxSecondViewController.m
//  AntiBlackBox
//
//  Created by Thor Lin on 2014/3/23.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "AntiBlackBoxSecondViewController.h"

@interface AntiBlackBoxSecondViewController ()

@end

@implementation AntiBlackBoxSecondViewController
@synthesize myWebView=_myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
//    NSURL *url = [NSURL URLWithString:@"http://congress-text-live.herokuapp.com/json/"];
//    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
//    
//    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
//    
//    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
//    
//    for (int i=0; i<array.count; i++) {
//        NSLog(@"A:%@",[[array objectAtIndex:i] objectForKey:@"content"]);
//    }

// Do any additional setup after loading the view, typically from a nib.

    _myWebView.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    
    [self.view setAutoresizesSubviews:YES];
    NSURL *url = [NSURL URLWithString:@"http://logbot.gqv.tw/live/fumao.word.live"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_myWebView loadRequest:requestObj];
    
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
