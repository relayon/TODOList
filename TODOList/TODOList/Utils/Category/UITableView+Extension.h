//
//  UITableView+Extension.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Extension)

/**
 注册Cell

 @param clzz 类名
 */
- (void)registerCell:(Class)clzz;

@end
