//
//  UITextField+XIBInspectable.m
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

#import "UITextField+XIBInspectable.h"

@implementation UITextField (XIBInspectable)


- (void)setX_LeftIcon:(UIImage *)X_LeftIcon{
    
    CGSize fieldSize = self.frame.size;
    CGSize imageSize = X_LeftIcon.size;
    
    CGFloat leftPadding = 10;
    CGFloat topPadding  = 3;
    CGFloat height      = imageSize.height;
    CGFloat scale       = 1.f;
    
    if (imageSize.height > (fieldSize.height - 2*topPadding)) {
        height = fieldSize.height - 2*topPadding;
        scale = height/imageSize.height;
    }
    
    CGFloat width = imageSize.width * scale;
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width +2*leftPadding, fieldSize.height)];
    paddingView.backgroundColor = [UIColor clearColor];
    
    UIImageView *leftView = [[UIImageView alloc] initWithImage:X_LeftIcon];
    leftView.frame = CGRectMake(leftPadding, topPadding, width, height);
    
    [paddingView addSubview:leftView];
    
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
}


- (UIImage *)X_LeftIcon{
    if ([self.leftView isKindOfClass:[UIImageView class]]) {
        return ((UIImageView *)self.leftView).image;
    }
    return nil;
}

@end
