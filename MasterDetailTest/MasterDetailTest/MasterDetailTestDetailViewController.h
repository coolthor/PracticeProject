//
//  MasterDetailTestDetailViewController.h
//  MasterDetailTest
//
//  Created by Thor Lin on 13/7/26.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterDetailTestDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (weak,nonatomic) IBOutlet UITextView *poemTextView;
@property (nonatomic) int poet;

@end
