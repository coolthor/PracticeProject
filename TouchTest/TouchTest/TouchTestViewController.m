//
//  TouchTestViewController.m
//  TouchTest
//
//  Created by Thor Lin on 13/7/27.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "TouchTestViewController.h"


@interface TouchTestViewController ()

@end

@implementation TouchTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.multipleTouchEnabled = YES;
    imageView = [[CatImageView alloc]initWithImage:[UIImage imageNamed:@"pinpin.png"]];
    [self.view addSubview:imageView];
    imageView.center = CGPointMake(160, 240);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    NSLog(@"CatImageView touchesMoved (%f,%f)",point.x,point.y);
    imageView.center = point;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
 
    NSLog(@"touchesEnd count %d",[touches count]);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegin count %d",[touches count]);
}
@end
