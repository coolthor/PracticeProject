//
//  TableViewPractice01DetailViewController.h
//  TableViewPractice01
//
//  Created by Thor Lin on 2013/12/25.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewPractice01DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
