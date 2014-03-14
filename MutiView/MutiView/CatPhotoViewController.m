//
//  CatPhotoViewController.m
//  MutiView
//
//  Created by Thor Lin on 13/7/22.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "CatPhotoViewController.h"

@interface CatPhotoViewController ()

@end

@implementation CatPhotoViewController

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
    UINavigationBar *navBar =[[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [self.view addSubview:navBar];
    
    UIBarButtonItem *backBtn = [[UIBarButtonItem alloc] initWithTitle:@"BACK" style:UIBarButtonItemStylePlain target:self action:@selector(back:)];
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:@"平平寫真"];
    navItem.leftBarButtonItem = backBtn;
    [navBar pushNavigationItem:navItem animated:NO];
    
    [self addCatPic];
}

-(void)addCatPic{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 44, 320, 480-20-44)];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    switch (catType) {
        case FLYKICK_PINPIN:
            imageView.image = [UIImage imageNamed:@"pinpin_kick.png"];
            break;
        case SLEEP_PINPIN:
            imageView.image = [UIImage imageNamed:@"pinpin_sleep.png"];
            break;
        case HIME:
            imageView.image = [UIImage imageNamed:@"hime.png"];
            break;
        default:
            break;
    }
    [self.view addSubview:imageView];
}

-(id)init:(int)type{
    if (self = [super init]) {
        catType = type;
    }
    return  self;
}

-(void) back:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
