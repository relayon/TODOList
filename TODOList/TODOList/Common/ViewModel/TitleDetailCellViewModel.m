//
//  TitleDetailCellViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TitleDetailCellViewModel.h"

@implementation TitleDetailCellViewModel

@synthesize title;
@synthesize detail;

/**
 创建模型
 
 @param aTitle 标题
 @param aDetail 详情
 @return 模型
 */
+ (instancetype)modelWithTitle:(NSString*)aTitle detail:(NSString*)aDetail {
    TitleDetailCellViewModel* model = [[[self class] alloc] init];
    model.title = aTitle;
    model.detail = aDetail;
    return model;
}

@end
