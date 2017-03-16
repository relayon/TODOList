//
//  TableBaseViewModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableBaseViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableBaseViewModel : NSObject <TableBaseViewModelProtocol>

//@property (nonatomic, copy) NSString* viewClassName;
//@property (nonatomic, assign) CGFloat   viewHeight;
//@property (nonatomic, weak) UIViewController* controller;
// 数据模型
@property (nonatomic, weak) id dataModel;

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller viewClassName:(NSString* _Nullable)viewClassName;

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @param height 高度
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller viewClassName:(NSString* _Nullable)viewClassName height:(float)height;

@end

NS_ASSUME_NONNULL_END
