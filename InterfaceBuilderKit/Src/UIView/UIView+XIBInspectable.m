//
//  UIView+XIBInspectable.m
//  InterfaceBuilderKit
//
//  _____  _           _          _____ _          _
//  |  ___(_)_ __   __| | ___ _ _|_   _(_)_      _| | __
//  | |_  | | '_ \ / _` |/ _ \ '__|| | | \ \ /\ / / |/ /
//  |  _| | | | | | (_| |  __/ |   | | | |\ V  V /|   <
//  |_|   |_|_| |_|\__,_|\___|_|   |_| |_| \_/\_/ |_|\_\
//
//  Created by _Finder丶Tiwk on 16/8/1.
//  Copyright © 2016年 _Finder丶Tiwk. All rights reserved.
//

#import "UIView+XIBInspectable.h"

@implementation UIView (XIBInspectable)

#pragma mark - 圆角
- (void)setX_CornerRadius:(CGFloat)X_CornerRadius{
    NSAssert(X_CornerRadius > 0, @"圆角设置不合法");
    self.layer.cornerRadius = X_CornerRadius;
}

- (CGFloat)X_CornerRadius{
    return self.layer.cornerRadius;
}

- (void)setX_RectCornerDesc:(NSString *)X_RectCornerDesc{
    
    NSArray *descs = [X_RectCornerDesc componentsSeparatedByString:@","];
    if (descs.count !=5) {
        return;
    }
    
    UIRectCorner xC = ([descs[1] isEqualToString:@"1"])?UIRectCornerTopLeft:0;
    UIRectCorner yC = ([descs[2] isEqualToString:@"1"])?UIRectCornerBottomLeft:0;
    UIRectCorner zC = ([descs[3] isEqualToString:@"1"])?UIRectCornerTopRight:0;
    UIRectCorner uC = ([descs[4] isEqualToString:@"1"])?UIRectCornerBottomRight:0;
    
    CGFloat radius = [descs[0] floatValue];
    
    UIRectCorner roundingCorner = xC|yC|zC|uC;
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:roundingCorner cornerRadii:CGSizeMake(radius,radius)];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame         = self.bounds;
    maskLayer.path          = maskPath.CGPath;
    self.layer.mask         = maskLayer;
    [self.layer setMasksToBounds:YES];
}

- (NSString *)X_RectCornerDesc{
    return @"6,1,1,1,1";
}


#pragma mark - 边框宽度
- (void)setX_BorderWidth:(CGFloat)X_BorderWidth{
    NSAssert(X_BorderWidth > 0, @"边框宽度设置不合法");
    self.layer.borderWidth = X_BorderWidth;
}

- (CGFloat)X_BorderWidth{
    return self.layer.borderWidth;
}

#pragma mark - 边框线条颜色
- (void)setX_BorderColor:(UIColor *)X_BorderColor{
    self.layer.borderColor = X_BorderColor.CGColor;
}

- (UIColor *)X_BorderColor{
    return (__bridge UIColor *)self.layer.borderColor;
}

#pragma mark - 背景图片

- (void)setX_BackgroundImage:(UIImage *)X_BackgroundImage{
    self.backgroundColor = [UIColor colorWithPatternImage:X_BackgroundImage];
}

- (UIImage *)X_BackgroundImage{
    return nil;
}



@end
