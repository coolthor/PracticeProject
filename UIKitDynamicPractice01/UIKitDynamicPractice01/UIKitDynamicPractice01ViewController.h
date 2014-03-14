//
//  UIKitDynamicPractice01ViewController.h
//  UIKitDynamicPractice01
//
//  Created by Thor Lin on 13/10/22.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIKitDynamicPractice01ViewController : UIViewController {
    
    UIDynamicAnimator* animator;
    UIGravityBehavior* gravity;
    UICollisionBehavior* collision;
    UIAttachmentBehavior *attachment;
    UIPushBehavior *push;
    UISnapBehavior* snap;
}
@end
