//
//  ButtonContainerView.m
//  ToolitByOC
//
//  Created by 武淅 段 on 16/6/21.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

#import "ButtonContainerView.h"
#import "UIColor+TAToolkit.h"

#define LEFT_ALIGNMENT 10
#define TOP_ALIGNMENT 10

@interface ButtonContainerView()

@property (nonatomic) NSMutableArray* buttons;

@end
@implementation ButtonContainerView


- (void)awakeFromNib
{
    [super awakeFromNib];
    self.textColorNormal = [UIColor colorWithRGB:0x999999];
    self.textColorSelected = [UIColor whiteColor];
    self.bgColorNomal = [UIColor colorWithRGB:0xeeeeee];
    self.bgColorSelected = [UIColor colorWithRGB:0xb08de8];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        self.textColorNormal = [UIColor colorWithRGB:0x999999];
        self.textColorSelected = [UIColor whiteColor];
        self.bgColorNomal = [UIColor colorWithRGB:0xeeeeee];
        self.bgColorSelected = [UIColor colorWithRGB:0xb08de8];
    }
    return self;
}

- (void)setButtonItemsWithTitles:(NSArray *)titles
{
    if(!_buttons){
        _buttons = [NSMutableArray new];
    }
    for(UIButton *b in _buttons){
        [b removeFromSuperview];
    }
    [_buttons removeAllObjects];
    
    
    int x = LEFT_ALIGNMENT;
    int y = TOP_ALIGNMENT;
    for(NSString *title in titles){
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:_textColorNormal forState:UIControlStateNormal];
        [button setTitleColor:_textColorSelected forState:UIControlStateSelected];
        [button.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        [button setBackgroundColor:_bgColorNomal];
        [button addTarget:self action:@selector(didSelectedButton:) forControlEvents:UIControlEventTouchUpInside];
        CGSize size = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.0]}];
        size.height+=8;
        size.width+=16;
        if(x+size.width > self.frame.size.width){
            x = LEFT_ALIGNMENT;
            y+=size.height+TOP_ALIGNMENT;
        }
        button.frame = CGRectMake(x, y, size.width, size.height);
        button.layer.cornerRadius = size.height/2;
        [_buttons addObject:button];
        [self addSubview:button];
        x+=size.width+LEFT_ALIGNMENT;
    }
}

- (void) didSelectedButton : (UIButton *)button{
    
    button.selected = !button.selected;
    if(button.selected){
        [button setBackgroundColor:_bgColorSelected];
    }
    else{
        [button setBackgroundColor:_bgColorNomal];
    }
}

@end
