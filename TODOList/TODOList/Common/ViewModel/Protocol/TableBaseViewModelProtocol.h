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

@required
/**
 View所在的controller
 */
@property (nonatomic, weak) UIViewController* controller;

/**
 View使用的类名
 */
@property (nonatomic, copy) NSString* viewClassName;

/**
 View的高度
 */
@property (nonatomic, assign) CGFloat viewHeight;

/**
 数据模型
 */
@property (nonatomic, weak) id dataModel;

/**
 绑定数据模型
 
 @param model 数据模型
 */
- (void)bindDataModel:(id)model;

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)saveToDataModel;

@end

NS_ASSUME_NONNULL_END

#endif /* TableBaseViewModelProtocol_h */
