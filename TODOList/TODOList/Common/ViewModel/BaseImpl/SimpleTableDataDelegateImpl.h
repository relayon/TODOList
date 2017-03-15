//
//  SimpleTableDataDelegateImpl.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableSectionViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleTableDataDelegateImpl : NSObject <UITableViewDataSource, UITableViewDelegate>

/**
 保存数据到数据模型
 */
- (void)smc_saveToDataModel;

/**
 数据源
 */
@property (nonatomic, strong) NSArray<id<TableSectionViewModelProtocol>>* dataList;

/**
 创建委托

 @param data 数据源
 @return 委托
 */
+ (instancetype)delegateWithData:(NSArray<id<TableSectionViewModelProtocol>>*)data;

@end

NS_ASSUME_NONNULL_END
