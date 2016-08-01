//
//  IBSeparateLine.m
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

#import "IBSeparateLine.h"

@implementation IBSeparateLine

#pragma mark - 一像素
- (void)setX_OnePixel:(BOOL)X_OnePixel{
    if (X_OnePixel) {
        CGRect rect = self.frame;
        rect.size.height = 1.f/[UIScreen mainScreen].scale;
        self.frame = rect;
    }
}

- (BOOL)X_OnePixel{
    return NO;
}

@end
