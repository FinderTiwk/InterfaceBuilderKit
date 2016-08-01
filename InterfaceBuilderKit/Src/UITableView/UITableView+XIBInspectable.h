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

@end
