//
//  UIButton+XIBInspectable.m
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

#import "UIButton+XIBInspectable.h"

@implementation UIButton (XIBInspectable)

#pragma mark - 按钮标题
- (void)setX_HighLightTitle:(NSString *)X_HighLightTitle{
    [self setTitle:X_HighLightTitle forState:UIControlStateHighlighted];
}
- (NSString *)X_HighLightTitle{
    return @"BUTTON";
}

- (void)setX_HighLightTitleColor:(UIColor *)X_HighLightTitleColor{
    [self setTitleColor:X_HighLightTitleColor forState:UIControlStateHighlighted];
}

- (UIColor *)X_HighLightTitleColor{
    return [UIColor blackColor];
}

#pragma mark - 按钮背景
- (void)setX_HighLightImage:(UIImage *)X_HighLightImage{
    [self setBackgroundImage:X_HighLightImage forState:UIControlStateHighlighted];
}

- (UIImage *)X_HighLightImage{
    return nil;
}

- (void)setX_HighLightColor:(UIColor *)X_HighLightColor{
    self.adjustsImageWhenHighlighted = NO;
    [self setBackgroundImage:imageFromColor(X_HighLightColor) forState:UIControlStateHighlighted];
}

- (UIColor *)X_HighLightColor{
    return [UIColor whiteColor];
}

static UIImage* imageFromColor(UIColor *color){
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}


#pragma mark - 边距

- (void)setX_ImagePadding:(CGRect)X_ImagePadding{
    CGFloat top    = X_ImagePadding.origin.x;
    CGFloat left   = X_ImagePadding.origin.y;
    CGFloat bottom = X_ImagePadding.size.width;
    CGFloat right  = X_ImagePadding.size.height;
    self.imageEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
}

- (CGRect)X_ImagePadding{
    return CGRectZero;
}

- (void)setX_TitlePadding:(CGRect)X_TitlePadding{
    CGFloat top    = X_TitlePadding.origin.x;
    CGFloat left   = X_TitlePadding.origin.y;
    CGFloat bottom = X_TitlePadding.size.width;
    CGFloat right  = X_TitlePadding.size.height;
    self.titleEdgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
}

- (CGRect)X_TitlePadding{
    return CGRectZero;
}

@end
