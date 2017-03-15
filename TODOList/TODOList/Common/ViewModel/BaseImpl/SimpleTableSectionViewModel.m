//
//  SimpleTableSectionViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableSectionViewModel.h"
#import "SimpleTableDataModelProtocol.h"

@interface SimpleTableSectionViewModel ()

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
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)smc_bindDataModel:(id<SimpleTableDataModelProtocol>)dataModel {
    self.dataModel = dataModel;
}

@end
