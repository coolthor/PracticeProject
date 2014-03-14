//
//  FBLoginAppDelegate.h
//  XcodePracticeFBLogin
//
//  Created by Thor Lin on 13/6/24.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface FBLoginAppDelegate : UIResponder <UIApplicationDelegate>

extern NSString *const FBSessionStateChangedNotification;
@property (strong, nonatomic) UIWindow *window;

- (BOOL)openSessionWithAllowLoginUI:(BOOL)allowLoginUI;

@end
