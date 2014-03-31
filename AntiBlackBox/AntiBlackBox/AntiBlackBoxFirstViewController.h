//
//  AntiBlackBoxFirstViewController.h
//  AntiBlackBox
//
//  Created by Thor Lin on 2014/3/23.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface AntiBlackBoxFirstViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray * streamTitleArray;
    int Aindex;
}
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
