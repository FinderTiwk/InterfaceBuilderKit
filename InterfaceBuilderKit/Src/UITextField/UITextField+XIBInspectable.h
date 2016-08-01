//
//  UITextField+XIBInspectable.h
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

@interface UITextField (XIBInspectable)

/*! 输入框左边Icon*/
@property (nonatomic,assign) IBInspectable UIImage *X_LeftIcon;

@end
