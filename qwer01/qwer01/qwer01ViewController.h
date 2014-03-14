//
//  qwer01ViewController.h
//  qwer01
//
//  Created by Thor Lin on 2014/2/10.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface qwer01ViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate,UIScrollViewDelegate>
{
    CGPoint startPos;
    NSTimeInterval ts;
    IBOutlet UILabel *myLabel;
    
    IBOutlet UITextField *textField;
    IBOutlet UIScrollView *myScrollView;
}

@end
