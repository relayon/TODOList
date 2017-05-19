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
@synthesize dataModel;

/**
 根据数据模型更新
 
 @param dm 数据模型
 */
- (void)updateWithDataModel:(id)dm {
    self.dataModel = dm;
}

// View使用的类名
+ (NSString*)viewClassName {
    return nil;
}

/**
 更新UI
 
 @param view UI
 */
- (void)updateView:(UIView*)view {
    
}

/**
 高度是否自适应，默认：NO
 
 @return YES/NO
 */
- (BOOL)isAutoHeight {
    return NO;
}

/**
 自定义高度，在isAutoHeight为NO时有效
 
 @return 高度
 */
- (CGFloat)customViewHeight {
    return 45;
}

/**
 生成ViewModel
 
 @param controller 控制器
 @return ViewModel
 */
+ (instancetype)modelWithController:(UIViewController* _Nullable)controller {
    TableBaseViewModel* model = [[[self class] alloc] init];
    model.controller = controller;
    return model;
}

@end
