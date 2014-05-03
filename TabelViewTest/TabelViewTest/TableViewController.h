//
//  TableViewController.h
//  TabelViewTest
//
//  Created by Thor Lin on 2014/5/2.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

//失敗的case
//New file的時候直接繼承UITableViewController生出來的class
@interface TableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>

@end
