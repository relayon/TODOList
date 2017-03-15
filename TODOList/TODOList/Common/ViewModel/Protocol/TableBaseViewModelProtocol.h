//
//  TableBaseViewModelProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableBaseViewModelProtocol_h
#define TableBaseViewModelProtocol_h

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TableBaseViewModelProtocol <NSObject>

/**************************************************************************
 * 必须实现，View只读，不可交互
 **************************************************************************/
@required
/**
 获取当前View使用的类名
 
 @return View类名
 */
- (NSString*)smc_viewClassName;

/**
 当前View的高度
 
 @return View高度
 */
- (CGFloat)smc_viewHeight;

/**
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)smc_bindDataModel:(id)dataModel;

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)smc_saveToDataModel;

/**************************************************************************
 * 可选实现，View可交互
 **************************************************************************/
@optional
// 标题
- (NSString*)title;
// 详情
- (NSString*)detail;

/**
 获取当前所在的controller，如果View需要响应点击事件，则需要实现此方法
 
 @return controller
 */
- (UIViewController*)smc_controller;
@end

NS_ASSUME_NONNULL_END

#endif /* TableBaseViewModelProtocol_h */
