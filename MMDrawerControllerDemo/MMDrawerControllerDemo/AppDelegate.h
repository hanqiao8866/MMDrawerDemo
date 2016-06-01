//
//  AppDelegate.h
//  MMDrawerControllerDemo
//
//  Created by 谢涛 on 16/5/31.
//  Copyright © 2016年 X.T. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMDrawerController.h" // 引入第三方库

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong) MMDrawerController *drawerController;


@end

