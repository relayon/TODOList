//
//  SimpleTableBaseViewModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableBaseViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleTableBaseViewModel : NSObject <TableBaseViewModelProtocol>

/**************************************************************************
 * View只读，不可交互实现
 **************************************************************************/
/**
 新建一个ViewModel
 
 @param viewClassName view的类名
 @return ViewModel
 */
+ (instancetype)modelWithViewClassName:(NSString*)viewClassName;

/**
 新建一个ViewModel
 
 @param viewClassName view的类名
 @param height view的高度
 @return ViewModel
 */
+ (instancetype)modelWithViewClassName:(NSString*)viewClassName height:(float)height;

/**************************************************************************
 * View可交互实现
 **************************************************************************/
/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller viewClassName:(NSString*)viewClassName;

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @param height 高度
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller viewClassName:(NSString*)viewClassName height:(float)height;

@end

NS_ASSUME_NONNULL_END
