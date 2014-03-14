//
//  UIKitDynamicPractice02AppDelegate.m
//  StoryBoardPractice02
//
//  Created by Thor Lin on 2013/12/24.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "UIKitDynamicPractice02AppDelegate.h"

@implementation UIKitDynamicPractice02AppDelegate
{
    NSMutableArray * players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    players = [NSMutableArray arrayWithCapacity:20];
    
    Player * player = [[Player alloc]init];
    player.name = @"Bill Gate";
    player.game =@"StarCraft II";
    player.rating  = 10;
    [players addObject:players];
    
    player = [[Player alloc]init];
    player.name = @"Toyzx";
    player.game =@"LOL";
    player.rating  = 8;
    [players addObject:players];
    
    player = [[Player alloc]init];
    player.name = @"Stanely";
    player.game =@"HeatStone";
    player.rating  = 7;
    [players addObject:players];
    
    player = [[Player alloc]init];
    player.name = @"Tom";
    player.game =@"WOW";
    player.rating  = 5;
    [players addObject:players];
    
    player = [[Player alloc]init];
    player.name = @"Job";
    player.game =@"Apple";
    player.rating  = 10;
    [players addObject:players];
    
    UITableViewController * myUITableViewController = (UITableViewController * )self.window.rootViewController;
    //UITabBarController myUITabBarController = [UITabBarController ]
    //UINavigationController * myUINavigationController = ()
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
