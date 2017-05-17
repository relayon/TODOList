//
//  XibUtils.h
//  HYSmileiOS
//
//  Created by alekye on 16/4/24.
//  Copyright © 2016年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XibUtils : NSObject

+ (NSString*)getName;

/**
 *  加载XIB
 *
 *  @param clazz 类名
 *
 *  @return View
 */
+ (id)loadXib:(Class)clazz;

/**
 向UITableView注册Cell

 @param clazz Cell类
 @param tableView table
 */
+ (void)registXibCell:(Class)clazz toTable:(UITableView*)tableView;

@end
