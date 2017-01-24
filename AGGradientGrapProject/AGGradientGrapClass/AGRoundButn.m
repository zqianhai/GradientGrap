//
//  AGRoundButn.m
//  GradientGradient
//
//  Created by aojun on 17/1/23.
//  Copyright © 2017年 aojun. All rights reserved.
//

#import "AGRoundButn.h"

@implementation AGRoundButn

- (void)layoutSubviews{
    [super layoutSubviews];
    // 绘制圆角
    self.layer.masksToBounds    = YES;
    self.layer.cornerRadius     = self.frame.size.height/2;
}

@end
