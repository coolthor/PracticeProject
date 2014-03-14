//
//  CatPinpinViewController.m
//  CatView
//
//  Created by Thor Lin on 13/7/20.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "CatPinpinViewController.h"

@interface CatPinpinViewController ()

@end

@implementation CatPinpinViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

//    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
//    view1.backgroundColor = [UIColor blueColor];
//    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
//    view2.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view1];
//    [view1 addSubview:view2];
//    NSLog(@"%d view1 subview count", [view1.subviews count]);
//    [view2 removeFromSuperview];
//    NSLog(@"%d view1 subview count", [view1.subviews count]);

    UIImage *catImage = [UIImage imageNamed:@"pinpin_kick.png"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:catImage];
    [self.view addSubview:imageView];
    
    //imageView.frame = CGRectMake(100, 100, imageView.frame.size.width, imageView.frame.size.height);
    //imageView.center = CGPointMake(160,240);

    //UIView *whiteView =[[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    
    
    UIView *blueView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 150)];
    blueView.backgroundColor  = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    [blueView addSubview:imageView];
    
    blueView.center = CGPointMake(160,240);
    blueView.clipsToBounds= YES;
    
    //imageView.clipsToBounds = YES;
    
//    int i;
//    for(i = 0;i< [self.view.subviews count];i++){
//        UIView *tempUIView=[self.view.subviews objectAtIndex:i];
//        if(tempUIView == blueView){
//            NSLog(@"%d blueView",i);
//        }else{
//            NSLog(@"%d imageView",i);
//        }
//    }
//    [self.view bringSubviewToFront:imageView];
//    for(i = 0;i< [self.view.subviews count];i++){
//        UIView *tempUIView=[self.view.subviews objectAtIndex:i];
//        if(tempUIView == blueView){
//            NSLog(@"%d blueView",i);
//        }else{
//            NSLog(@"%d imageView",i);
//        }
//    }
}

- (IBAction)returnBtnPressed:(id)sender{
    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
