//
//  ViewController.m
//  ToolitByOC
//
//  Created by 武淅 段 on 16/6/21.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

#import "ViewController.h"
#import "ButtonContainerView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *containerHeight;
@property (weak, nonatomic) IBOutlet ButtonContainerView *buttonsContainerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [_buttonsContainerView setButtonItemsWithTitles:@[@"这是",@"生涯巅峰",@"生命周期",@"时间",@"大觉寺爱的痕迹塞",@"三个字",@"五个字哈哈",@"什么",@"动画撒娇好"]];
//    _containerHeight.constant = _buttonsContainerView.frame.size.height;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [_buttonsContainerView setButtonItemsWithTitles:@[@"这是",@"生涯巅峰",@"生命周期",@"时间",@"大觉寺爱的痕迹塞",@"三个字",@"五个字哈哈",@"什么",@"动画撒娇好"]];
    _containerHeight.constant = _buttonsContainerView.frame.size.height;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
