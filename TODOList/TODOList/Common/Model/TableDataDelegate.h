//
//  TableDataDelegate.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TableSectionModel.h"
#import "BaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableDataDelegate : NSObject <UITableViewDataSource, UITableViewDelegate>

/**
 绑定数据
 */
- (void)bind;
@property (nonatomic, strong) NSArray<TableSectionModel*>* dataList;

- (void)configCell:(BaseTableViewCell*)cell forIndex:(NSIndexPath*)indexPath;
+ (instancetype)delegateWithData:(NSArray<TableSectionModel*>*)data;

@end

NS_ASSUME_NONNULL_END
