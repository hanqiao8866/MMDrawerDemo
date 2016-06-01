//
//  AppDelegate.m
//  MMDrawerControllerDemo
//
//  Created by 谢涛 on 16/5/31.
//  Copyright © 2016年 X.T. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseViewController.h" // 所有VC的基类
#import "MainViewController.h" // 中间VC
#import "LeftViewController.h" // 左边VC
#import "RightViewController.h" // 右边VC

@interface AppDelegate ()


@end

#define MainScreenHight [UIScreen mainScreen].bounds.size.height
#define MainScreenWidth [UIScreen mainScreen].bounds.size.width

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // 将中间VC和左边VC加上导航控制器 中间部分也可以是UITabBarController 右边VC没有做处理
    UINavigationController *centerNav = [[UINavigationController alloc] initWithRootViewController:[[MainViewController alloc] init]];
    UINavigationController *leftNav = [[UINavigationController alloc] initWithRootViewController:[[LeftViewController alloc] init]];
    RightViewController *rightVC = [[RightViewController alloc] init];
    
    self.drawerController = [[MMDrawerController alloc] initWithCenterViewController:centerNav leftDrawerViewController:leftNav rightDrawerViewController:rightVC];
    
    [self.drawerController setShowsShadow:YES]; // 是否显示阴影效果
    self.drawerController.maximumLeftDrawerWidth = MainScreenWidth*3/4; // 左边拉开的最大宽度
    self.drawerController.maximumRightDrawerWidth = MainScreenWidth*3/4; // 右边拉开的最大宽度
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    self.window.rootViewController = self.drawerController;

    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
