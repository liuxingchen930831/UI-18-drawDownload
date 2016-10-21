//
//  ProgressView.m
//  绘制下载圆形
//
//  Created by liuxingchen on 16/10/21.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView
-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    [self setNeedsDisplay];
}
//需要注意drawRect不可以手动调用，如果想重新绘制或者刷新绘制 需要调用 setNeedsDisplay方法
- (void)drawRect:(CGRect)rect {
    CGFloat radius = rect.size.width * 0.5;
    CGPoint center = CGPointMake(radius, radius);
    
    CGFloat endA = -M_PI_2 + _progress * M_PI * 2;
   UIBezierPath *path =  [UIBezierPath bezierPathWithArcCenter:center radius:radius -5 startAngle:-M_PI_2 endAngle:endA clockwise:YES];
    [path stroke];
}


@end
