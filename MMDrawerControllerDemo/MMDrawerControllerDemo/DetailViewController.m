//
//  DetailViewController.m
//  MMDrawerControllerDemo
//
//  Created by 谢涛 on 16/5/31.
//  Copyright © 2016年 X.T. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

// 即将进来页面后关闭抽屉
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self enableOpenLeftDrawer:NO];
    [self enableOpenRightDrawer:NO];
}

// 即将出去后再打开 因为可能其他页面需要抽屉效果
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self enableOpenLeftDrawer:YES];
    [self enableOpenRightDrawer:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self configureNavgationItemTitle:@"详细页面"];
    
    __weak typeof(self) weakSelf = self;
    [self configureLeftBarButtonWithTitle:@"返回" action:^{
        [weakSelf.navigationController popViewControllerAnimated:YES];
    }];
}





@end
