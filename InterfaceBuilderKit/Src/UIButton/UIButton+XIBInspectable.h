//
//  UIButton+XIBInspectable.h
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
@interface UIButton (XIBInspectable)

/*! 按钮高亮时的标题*/
@property (nonatomic,assign) IBInspectable NSString *X_HighLightTitle;
/*! 按钮高亮时的标题*/
@property (nonatomic,assign) IBInspectable UIColor *X_HighLightTitleColor;
/*! 按钮高亮时的背影图片*/
@property (nonatomic,assign) IBInspectable UIImage *X_HighLightImage;
/*! 按钮高亮时的背景颜色  图片和颜色二选一*/
@property (nonatomic,assign) IBInspectable UIColor *X_HighLightColor;
/*! 按钮图标与按钮的外边距  顺时针 上 左 下 右 (1,2,3,4)*/
@property (nonatomic,assign) IBInspectable CGRect X_ImagePadding;
/*! 按钮标题与按钮的外边距  顺时针 上 左 下 右 (1,2,3,4)*/
@property (nonatomic,assign) IBInspectable CGRect X_TitlePadding;

@end
