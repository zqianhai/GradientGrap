//
//  ViewController.m
//  GradientGradient
//
//  Created by aojun on 17/1/23.
//  Copyright © 2017年 aojun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *firstCircle;

@property (nonatomic, strong) CAShapeLayer *firstCircleShapeLayer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:self.firstCircle];
    _firstCircle.frame = CGRectMake(100, 80, 200, 200);
    _firstCircle.center = CGPointMake(CGRectGetWidth(self.view.bounds) / 2.0, CGRectGetHeight(self.view.bounds) / 2.0);
    CGFloat firsCircleWidth = 10;
    self.firstCircleShapeLayer = [self generateShapeLayerWithLineWidth:firsCircleWidth];
    _firstCircleShapeLayer.path = [self generateBezierPathWithCenter:CGPointMake(100, 100) radius:100].CGPath;
    _firstCircle.layer.mask = _firstCircleShapeLayer;
    
    
}

- (CAShapeLayer *)generateShapeLayerWithLineWidth:(CGFloat)lineWidth
{
    CAShapeLayer *waveline = [CAShapeLayer layer];
    waveline.lineCap = kCALineCapButt;
    waveline.lineJoin = kCALineJoinRound;
    waveline.strokeColor = [UIColor redColor].CGColor;
    waveline.fillColor = [[UIColor clearColor] CGColor];
    waveline.lineWidth = lineWidth;
    waveline.backgroundColor = [UIColor clearColor].CGColor;
    
    return waveline;
}

- (UIBezierPath *)generateBezierPathWithCenter:(CGPoint)center radius:(CGFloat)radius
{
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:-M_PI/2 endAngle:-M_PI/10 clockwise:YES];
    
    return circlePath;
}

- (UIImageView *)firstCircle
{
    if (!_firstCircle) {
        self.firstCircle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"circleBackground.jpg"]];
        _firstCircle.layer.masksToBounds = YES;
        _firstCircle.contentMode = UIViewContentModeScaleToFill;
        _firstCircle.alpha = 1.0;
    }
    
    return _firstCircle;
}

@end
