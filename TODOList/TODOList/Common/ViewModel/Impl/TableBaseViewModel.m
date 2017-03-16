//
//  TableBaseViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableBaseViewModel.h"

#define C_VIEW_HEIGHT   44.0f

@interface TableBaseViewModel ()

@end

@implementation TableBaseViewModel

@synthesize controller;
@synthesize viewClassName;
@synthesize viewHeight;
@synthesize dataModel;

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller viewClassName:(NSString* _Nullable)viewClassName {
    return [self modelWithController:controller viewClassName:viewClassName height:0.0f];
}

/**
 新建一个Section ViewModel
 
 @param controller controller
 @param viewClassName view的类名
 @param height 高度
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller viewClassName:(NSString* _Nullable)viewClassName height:(float)height {
    TableBaseViewModel* model = [[[self class] alloc] init];
    model.controller = controller;
    model.viewClassName = viewClassName;
    model.viewHeight = height;
    return model;
}

#pragma mark -- TableBaseViewModelProtocol
/**
 绑定数据模型
 
 @param model 数据模型
 */
- (void)bindDataModel:(id)model {
    self.dataModel = model;
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)saveToDataModel {
    NSLog(@"%s", __FUNCTION__);
}

@end
