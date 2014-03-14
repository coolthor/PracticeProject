//
//  ViewController.h
//  CocoaPodsExample
//
//  Created by Thor Lin on 2014/3/9.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *showsScrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *showPageControl;
- (IBAction)pageChanged:(id)sender;

@end
