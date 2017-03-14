//
//  UITableView+Extension.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "UITableView+Extension.h"

@implementation UITableView (Extension)

/**
 注册Cell
 
 @param clzz 类名
 */
- (void)registerCell:(Class)clzz {
    NSString* cellName = NSStringFromClass(clzz);
    [self registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
}

@end
