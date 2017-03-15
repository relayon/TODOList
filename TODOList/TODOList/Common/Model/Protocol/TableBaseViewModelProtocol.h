//
//  TableBaseViewModelProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableBaseViewModelProtocol_h
#define TableBaseViewModelProtocol_h

@protocol TableCellViewModelProtocol <NSObject>
// 必须实现，View只读
@required
/**
 获取当前View使用的类
 
 @return View类
 */
- (Class)smc_viewClass;

/**
 当前View的高度
 
 @return View高度
 */
- (CGFloat)smc_viewHeight;

// 可选实现，View可交互
@optional

/**
 获取当前所在的controller，如果View需要响应点击事件，则需要实现此方法
 
 @return controller
 */
- (UIViewController*)smc_controller;

/**
 绑定数据，在修改Model结束后，执行绑定
 */
- (void)smc_bind;
@end

#endif /* TableBaseViewModelProtocol_h */
