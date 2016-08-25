//
//  UITableView+XIBInspectable.h
//  InterfaceBuilderKit
//
//  Created by _Finder丶Tiwk on 16/8/2.
//  Copyright © 2016年 _Finder丶Tiwk. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UITableView (XIBInspectable)

/*! 是否显示空的表格*/
@property (nonatomic,assign) IBInspectable BOOL X_ShowEmptyFooter;
/*! 预估行高*/
@property (nonatomic,assign) IBInspectable CGFloat X_EstimateHeight;
/*! 是否自动适应Cell高度 搭配X_EstimateHeight 使用*/
@property (nonatomic,assign) IBInspectable BOOL X_AutoRowHeight;

@end
