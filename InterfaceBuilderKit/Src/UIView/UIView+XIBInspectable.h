//
//  UIView+XIBInspectable.h
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

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UIView (XIBInspectable)

/*! 视图圆角*/
@property (nonatomic,assign) IBInspectable CGFloat X_CornerRadius;

/*
 视图圆角 与 X_CornerRadius设置二选一
 格式必须如(否则无效)： 6,1,0,1,1
 第一位表示圆角曲率
 第二位表示左上角是否是圆角
 第三位表示左下角是否是圆角
 第四位表示右上角是否是圆角
 第五位表示右下角是否是圆角
 */
@property (nonatomic,assign) IBInspectable NSString *X_RectCornerDesc;

/*! 视图边框线条宽度*/
@property (nonatomic,assign) IBInspectable CGFloat X_BorderWidth;
/*! 视图边框线条颜色*/
@property (nonatomic,assign) IBInspectable UIColor *X_BorderColor;
/*! 视图背影图片 (平铺形式)*/
@property (nonatomic,assign) IBInspectable UIImage *X_BackgroundImage;

@end
