//
//  FBLoginAppDelegate.h
//  XcodePracticeFBLoginProject
//
//  Created by Thor Lin on 13/6/24.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@class FBLoginViewController;

@interface FBLoginAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FBLoginViewController *viewController;

@end
