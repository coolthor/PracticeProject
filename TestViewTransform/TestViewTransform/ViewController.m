//
//  ViewController.m
//  TestViewTransform
//
//  Created by Thor Lin on 2014/3/11.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myDymanicView;
@synthesize myFrameData;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    self.view.frame = self.view.bounds;
//    self.view.transform = CGAffineTransformMakeScale(0.5f, 0.5f);
}
- (IBAction)changeMyViewScale:(id)sender {
//    myDymanicView.frame = myDymanicView.frame;
    NSLog(@"view.bounds: %f,%f",self.view.bounds.origin.x,self.view.bounds.origin.y);
    NSLog(@"view.bounds.size : %f,%f",self.view.bounds.size.height,self.view.bounds.size.width);
    NSString * frameOrgin = [[NSString alloc]initWithFormat:@"frame: %f,%f",myDymanicView.frame.origin.x ,myDymanicView.frame.origin.y ];
    NSLog(@"%@",frameOrgin);
    
    [UIView beginAnimations:@"animation" context:nil];
    [UIView setAnimationDuration:1.3];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:)];
    
    myFrameData.text = frameOrgin;
    myDymanicView.transform =CGAffineTransformInvert(CGAffineTransformMakeScale(1.5f, 1.5f));//CGAffineTransformMakeScale(1, 1.5f);
    myDymanicView.alpha = 0.4;
    
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
