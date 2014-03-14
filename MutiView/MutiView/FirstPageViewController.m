//
//  FirstPageViewController.m
//  MutiView
//
//  Created by Thor Lin on 13/7/22.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "FirstPageViewController.h"
#import "CatPhotoViewController.h"
@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIButton *flykickBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    flykickBtn.frame = CGRectMake(30, 100, 200, 30);
    flykickBtn.tag = 0;
    [flykickBtn setTitle:@"臭平飛踢" forState:UIControlStateNormal];
    [self.view addSubview:flykickBtn];
    
    UIButton *sleepBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sleepBtn.frame = CGRectMake(30, 200, 200, 30);
    sleepBtn.tag = 1;
    [sleepBtn setTitle:@"臭平睡覺" forState:UIControlStateNormal];
    [self.view addSubview:sleepBtn];
    
    UIButton *lazyBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    lazyBtn.frame = CGRectMake(30, 300, 200, 30);
    lazyBtn.tag = 2;
    [lazyBtn setTitle:@"HI-ME" forState:UIControlStateNormal];
    [self.view addSubview:lazyBtn];
    
    [flykickBtn addTarget:self action:@selector(showFlyKickCat:) forControlEvents:UIControlEventTouchUpInside];
    [sleepBtn addTarget:self action:@selector(showSleepCat:) forControlEvents:UIControlEventTouchUpInside];
    [lazyBtn addTarget:self action:@selector(showHimeCat:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void) showFlyKickCat:(id)sender{
    CatPhotoViewController *controller = [[CatPhotoViewController alloc]init:FLYKICK_PINPIN];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:^{NSLog(@"Done");}];
}
- (void) showSleepCat:(id)sender{
    CatPhotoViewController *controller = [[CatPhotoViewController alloc]init:SLEEP_PINPIN];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:^{NSLog(@"Done");}];
}
- (void) showHimeCat:(id)sender{
    CatPhotoViewController *controller = [[CatPhotoViewController alloc]init:FLYKICK_PINPIN];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:^{NSLog(@"Done");}];
}
//- (void) showflykickCat:(id)sender{
//    UIView *catView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
//    catView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:catView];
//}
//- (void) showsleepCat:(id)sender{
//    UIView *catView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
//    catView.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:catView];
//}
//- (void) showlazyCat:(id)sender{
//    UIView *catView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
//    catView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:catView];
//}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
