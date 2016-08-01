//
//  UITableView+XIBInspectable.m
//  InterfaceBuilderKit
//
//  Created by _Finder丶Tiwk on 16/8/2.
//  Copyright © 2016年 _Finder丶Tiwk. All rights reserved.
//

#import "UITableView+XIBInspectable.h"

@implementation UITableView (XIBInspectable)

- (void)setX_ShowEmptyFooter:(BOOL)X_ShowEmptyFooter{
    if (!X_ShowEmptyFooter) {
        self.tableFooterView = [UIView new];
    }
}

- (BOOL)X_ShowEmptyFooter{
    return NO;
}


@end
