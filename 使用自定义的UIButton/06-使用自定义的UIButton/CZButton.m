//
//  CZButton.m
//  05-让UIButton根据文字内容计算宽高
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "CZButton.h"

@interface CZButton ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation CZButton


- (instancetype)init
{
    self = [super init];
    if (self) {
        //添加label
        UILabel *label = [[UILabel alloc]init];
        self.label = label;
        
        [self addSubview:label];
        
#pragma mark --label需要约束
        
        label.translatesAutoresizingMaskIntoConstraints = NO;
        
        //如果是封装成第三方包的东西给别人使用,在设置约束的时候 建议不要使用Masonry
        //使用系统自带的约束
        //上
        NSLayoutConstraint *labelTop = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1 constant:20];
        
        [self addConstraint:labelTop];
        //左
        NSLayoutConstraint *labelLeft = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
        
        [self addConstraint:labelLeft];
        
        //下
        NSLayoutConstraint *labelBottom = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1 constant:-20];
        
        [self addConstraint:labelBottom];
        
        //右
        NSLayoutConstraint *labelRight = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:-20];
        
        [self addConstraint:labelRight];
        
        
        
    }
    return self;
}


- (void)setTitle:(NSString *)title forState:(UIControlState)state{

    self.label.text = title;
    
}


- (UILabel *)titleLabel{
    return self.label;
}

- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state{

    self.label.textColor = color;

}

@end
