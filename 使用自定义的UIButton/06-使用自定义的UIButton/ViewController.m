//
//  ViewController.m
//  06-使用自定义的UIButton
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "CZButton.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CZButton *button = [[CZButton alloc]init];
    

    
    
    button.titleLabel.numberOfLines = 0;
    
    button.titleLabel.font = [UIFont systemFontOfSize:50];
    
    [button setTitle:@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    
    
    [button setBackgroundImage:[UIImage imageNamed:@"chat_send_nor"] forState:UIControlStateNormal];
    
    [button setBackgroundImage:[UIImage imageNamed:@"chat_send_press_pic"] forState:UIControlStateHighlighted];
    button.backgroundColor = [UIColor blackColor];
    [self.view addSubview:button];
    
   https://use Masonry method
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.view).offset(20);
        
        make.width.lessThanOrEqualTo(@200);
    }];
    
    
    //use system method
    
//    button.translatesAutoresizingMaskIntoConstraints = NO;
//    NSLayoutConstraint *buttonTop = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
//    
//    [self.view addConstraint:buttonTop];
//    //左
//    
//    NSLayoutConstraint *buttonLeft = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
//    
//    [self.view addConstraint:buttonLeft];
//    
//    
//    NSLayoutConstraint *yellowWidth = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:200];
//    [button addConstraint:yellowWidth];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
