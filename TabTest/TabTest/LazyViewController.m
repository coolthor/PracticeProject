//
//  LazyViewController.m
//  TabTest
//
//  Created by Thor Lin on 13/7/26.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "LazyViewController.h"

@interface LazyViewController ()

@end

@implementation LazyViewController

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
    UIButton * TextBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    TextBtn.frame = CGRectMake(100, 100, 100, 30);
    [self.view addSubview:TextBtn];
    
    UITextField *textFeild = [[UITextField alloc] initWithFrame:CGRectMake(30, 30, 200, 30)];
    textFeild.borderStyle = UITextBorderStyleRoundedRect;
    [textFeild addTarget:self action:@selector(textDone:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.view addSubview:textFeild];
}

- (void)textDone:(id)sender{
    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
