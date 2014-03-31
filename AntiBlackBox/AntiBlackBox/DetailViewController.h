//
//  DetailViewController.h
//  AntiBlackBox
//
//  Created by Thor Lin on 2014/3/23.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    NSMutableArray * urlArray;
    UIWebView *myWebView01;
}
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;
@property (nonatomic) int arrayIndex;
@end
