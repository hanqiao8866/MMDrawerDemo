//
//  MainViewController.m
//  MMDrawerControllerDemo
//
//  Created by 谢涛 on 16/5/31.
//  Copyright © 2016年 X.T. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"

#import "DetailViewController.h"

// 取得AppDelegate单利
#define ShareApp ((AppDelegate *)[[UIApplication sharedApplication] delegate])

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self configureNavgationItemTitle:@"主页面"];
    [self configureLeftBarButtonWithTitle:@"左侧" action:^{
        NSLog(@"左侧按钮点击");
        [ShareApp.drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    }];
    
    [self configureRightBarButtonWithTitle:@"右侧" action:^{
        NSLog(@"右侧按钮点击");
        [ShareApp.drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:nil];
    }];
    
    self.view.backgroundColor = [UIColor cyanColor];
}


- (IBAction)pushBtnClick:(UIButton *)sender {
    DetailViewController *detailVC= [[DetailViewController alloc] init];
    [self pushNewViewController:detailVC];
}








@end
