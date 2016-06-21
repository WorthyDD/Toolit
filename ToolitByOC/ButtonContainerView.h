//
//  ButtonContainerView.h
//  ToolitByOC
//
//  Created by 武淅 段 on 16/6/21.
//  Copyright © 2016年 武淅 段. All rights reserved.
////高度动态变化的标签容器

#import <UIKit/UIKit.h>

@interface ButtonContainerView : UIView

@property (nonatomic) UIColor *textColorNormal;
@property (nonatomic) UIColor *textColorSelected;
@property (nonatomic) UIColor *bgColorNomal;
@property (nonatomic) UIColor *bgColorSelected;

- (void) setButtonItemsWithTitles: (NSArray *)titles;

@end
