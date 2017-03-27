//
//  XibUtils.m
//  HYSmileiOS
//
//  Created by alekye on 16/4/24.
//  Copyright © 2016年 heyou. All rights reserved.
//

#import "XibUtils.h"
#import <UIKit/UIKit.h>

@implementation XibUtils

+ (NSString*)getName {
    return @"";
}

/**
 *  加载XIB
 *
 *  @param clazz 类名
 *
 *  @return View
 */
+ (id)loadXib:(Class)clazz {
    id  xib;
    
    NSString *xibName = NSStringFromClass(clazz);
    xib = [[[NSBundle mainBundle] loadNibNamed:xibName owner:nil options:nil] firstObject];
    
    return xib;
}

/**
 *  向UITableView注册Cell
 *
 *  @param clazz Cell类
 *  @param table
 */
+ (void)registXibCell:(Class)clazz toTable:(UITableView*)tableView {
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *className = NSStringFromClass(clazz);
    [tableView registerNib:[UINib nibWithNibName:className bundle:mainBundle] forCellReuseIdentifier:className];
}

@end
