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

@end

@implementation TableBaseViewModel

@synthesize controller;
@synthesize viewClassName;
@synthesize viewHeight;

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
 获取当前所在的controller，如果View需要响应点击事件，则需要实现此方法
 
 @return controller
 */
- (UIViewController*)controller{
    return self.controller;
}

/**
 获取当前View使用的类名
 
 @return View类名
 */
- (NSString*)viewClassName {
    return self.viewClassName;
}

/**
 当前View的高度
 
 @return View高度
 */
- (CGFloat)viewHeight {
    return self.viewHeight;
}

/**
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)bindDataModel:(id)dataModel {
    self.dataModel = dataModel;
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)saveToDataModel {
    NSLog(@"%s", __FUNCTION__);
}

@end
