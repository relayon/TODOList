//
//  TableBaseViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableBaseViewModel.h"
#import "SimpleTableDataModelProtocol.h"

#define C_VIEW_HEIGHT   44.0f

@interface TableBaseViewModel ()

@property (nonatomic, copy) NSString* viewClassName;
@property (nonatomic, assign) CGFloat   viewHeight;
@property (nonatomic, weak) UIViewController* controller;

// 数据模型
@property (nonatomic, weak) id<SimpleTableDataModelProtocol> dataModel;

// 使用自定义标题，而不绑定数据模型
@property (nonatomic, assign) BOOL isCustomTitleDetail;
@property (nonatomic, copy) NSString* customTitle;
@property (nonatomic, copy) NSString* customDetail;

@end

@implementation TableBaseViewModel

// 标题
- (NSString*)title {
    if (self.isCustomTitleDetail) {
        return self.customTitle;
    }
    return [self.dataModel smc_title];
}

// 详情
- (NSString*)detail {
    if (self.isCustomTitleDetail) {
        return self.customDetail;
    }
    return [self.dataModel smc_detail];
}

/**
 设置通用标题和详情，不用绑定DataModel
 
 @param title 标题
 @param detail 详情
 */
- (void)setTitle:(NSString*)title detail:(NSString*)detail {
    self.isCustomTitleDetail = YES;
    self.customTitle = title;
    self.customDetail = detail;
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
    self.isCustomTitleDetail = NO;
    self.dataModel = dataModel;
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)smc_saveToDataModel {
    
}

/**
 获取当前所在的controller，如果View需要响应点击事件，则需要实现此方法
 
 @return controller
 */
- (UIViewController*)smc_controller {
    return self.controller;
}

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @param height 高度
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController*)controller viewClassName:(NSString*)viewClassName height:(float)height {
    TableBaseViewModel* model = [[[self class] alloc] init];
    model.controller = controller;
    model.viewClassName = viewClassName;
    model.viewHeight = height;
    return model;
}

@end
