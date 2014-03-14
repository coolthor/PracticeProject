//
//  TableViewPractice01DetailViewController.m
//  TableViewPractice01
//
//  Created by Thor Lin on 2013/12/25.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "TableViewPractice01DetailViewController.h"

@interface TableViewPractice01DetailViewController ()
- (void)configureView;
@end

@implementation TableViewPractice01DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    // Update the user interface for the detail item.
    if (self.detailItem) {
        
        //設定Navigation Bar的title
        [self setTitle:self.detailItem];
        
//        //設定圖片
//        UIImage *roleImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@.png",self.detailItem]];
//        [self.roleImage setImage:roleImage];
    }
    
//    if (self.detailItem) {
//        self.detailDescriptionLabel.text = [self.detailItem description];
//    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
