//
//  StockRecorderViewController.m
//  TestDelegate
//
//  Created by Thor Lin on 13/7/20.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "StockRecorderViewController.h"

@interface StockRecorderViewController ()

@end

@implementation StockRecorderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnPressed:(UIButton *)sender {
    UIAlertView *alertView =[[UIAlertView alloc] initWithTitle:@"有獎徵答"
                        message:@"iphone和android的優劣比"
                        delegate:self
                        cancelButtonTitle:@"iPhone"
                        otherButtonTitles:@"Android", nil];
    [alertView show];
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([alertView.title isEqualToString:@"有獎徵答"])
    {
        UIAlertView *newAlertView;
        switch (buttonIndex) {
            case 0:
                newAlertView = [[UIAlertView alloc] initWithTitle:@"Good choice"
                                                          message:nil
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil, nil];
                [newAlertView show];
                break;
            case 1:
                newAlertView = [[UIAlertView alloc] initWithTitle:@"Bad choice"
                                                          message:nil
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil, nil];
                [newAlertView show];
            default:
                break;
        }
    }
}

@end
