//
//  SimpleTableSectionViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableSectionViewModel.h"
#import "SimpleTableDataModelProtocol.h"

#define C_VIEW_HEIGHT   44.0f

@interface SimpleTableSectionViewModel ()

@property (nonatomic, copy) NSString* viewClassName;
@property (nonatomic, assign) CGFloat   viewHeight;

@property (nonatomic, weak) UIViewController* controller;

@property (nonatomic, weak) id<SimpleTableDataModelProtocol> dataModel;

@end

@implementation SimpleTableSectionViewModel

// 标题
- (NSString*)title {
    return [self.dataModel smc_title];
}

// 详情
- (NSString*)detail {
    return [self.dataModel smc_detail];
}

#pragma mark -- SimpleTableSectionViewModelProtocol
/**
 获取当前View使用的类名
 
 @return View类名
 */
- (NSString*)smc_viewClassName {
    return self.viewClassName;
}

/**
 当前View的高度
 
 @return View高度
 */
- (CGFloat)smc_viewHeight {
    return self.viewHeight;
}

/**
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)smc_bindDataModel:(id<SimpleTableDataModelProtocol>)dataModel {
    self.dataModel = dataModel;
}

/**************************************************************************
 * View只读，不可交互实现
 **************************************************************************/
/**
 新建一个ViewModel
 
 @param viewClassName view的类名
 @return ViewModel
 */
+ (instancetype)modelWithViewClassName:(NSString*)viewClassName {
    return [self modelWithViewClassName:viewClassName height:C_VIEW_HEIGHT];
}

/**
 新建一个ViewModel
 
 @param viewClassName view的类名
 @param height view的高度
 @return ViewModel
 */
+ (instancetype)modelWithViewClassName:(NSString*)viewClassName height:(float)height {
    return [self modelWithController:nil viewClassName:viewClassName height:height];
}

/**************************************************************************
 * View可交互实现
 **************************************************************************/
/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController*)controller viewClassName:(NSString*)viewClassName {
    return [self modelWithController:controller viewClassName:viewClassName height:C_VIEW_HEIGHT];
}

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @param height 高度
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController*)controller viewClassName:(NSString*)viewClassName height:(float)height {
    SimpleTableSectionViewModel* model = [[[self class] alloc] init];
    model.viewClassName = viewClassName;
    model.viewHeight = height;
    return model;
}

@end
