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

#pragma mark -- 属性
@required
// View所在的controller
@property (nonatomic, weak) UIViewController* controller;
// 关联的数据模型
@property (nullable, nonatomic, weak) id dataModel;

#pragma mark -- 方法
@required
/**
 根据数据模型更新
 
 @param dm 数据模型
 */
- (void)updateWithDataModel:(id)dm;

// View使用的类名
+ (NSString*)viewClassName;
/**
 更新UI

 @param view UI
 */
- (void)updateView:(UIView*)view;

/**
 高度是否自适应，默认：NO

 @return YES/NO
 */
- (BOOL)isAutoHeight;

/**
 自定义高度，在isAutoHeight为NO时有效
 
 @return 高度
 */
- (CGFloat)customViewHeight;

/**
 生成ViewModel

 @param controller 控制器
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller;

@end

NS_ASSUME_NONNULL_END

#endif /* TableBaseViewModelProtocol_h */
