//
//  BaseViewController.h
//  MMDrawerControllerDemo
//
//  Created by 谢涛 on 16/5/31.
//  Copyright © 2016年 X.T. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^RightBarButtonActionBlock) (void);
typedef void (^LeftBarButtonActionBlock) (void);

@interface BaseViewController : UIViewController

/**
 *  push新的控制器到导航控制器
 *
 *  @param newViewController 目标新的视图控制器
 */
- (void)pushNewViewController:(UIViewController *)newViewController;

/**
 *  设置带文字的左导航按钮并且回调方法
 *
 *  @param title 设置左侧导航按钮的文字内容
 *  @param action 设置动作
 */
- (void)configureLeftBarButtonWithTitle:(NSString *)title action:(LeftBarButtonActionBlock)action;

/**
 *  设置带文字的右导航按钮并且回调方法
 *
 *  @param title 设置右侧导航按钮的文字内容
 *  @param action 设置动作
 */
- (void)configureRightBarButtonWithTitle:(NSString *)title action:(RightBarButtonActionBlock)action;

/**
 *  设置导航条文字
 *
 *  @param navigationTitle 设置导航条上的文字内容
 */
- (void)configureNavgationItemTitle:(NSString *)navigationTitle;

/**
 *  控制抽屉可否打开左侧页面
 *
 *  @param enable YES 打开抽屉  NO 关闭抽屉
 */
- (void)enableOpenLeftDrawer:(BOOL)enable;

/**
 *  控制抽屉可否打开右侧页面
 *
 *  @param enable YES 打开抽屉  NO 关闭抽屉
 */
- (void)enableOpenRightDrawer:(BOOL)enable;

@end
