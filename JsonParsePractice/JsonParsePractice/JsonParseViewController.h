//
//  JsonParseViewController.h
//  JsonParsePractice
//
//  Created by Thor Lin on 2014/4/15.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JsonParseViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray * array;
    IBOutlet UITableView *myTableView;
    NSMutableDictionary *dic;
    NSMutableArray * cellTextarray;
    
}

@end
