//
//  BaseTableSectionViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableSectionViewModel.h"

@interface BaseTableSectionViewModel () {
    NSMutableArray<id<TableCellViewModelProtocol>>* _tableCells;
}

@end

@implementation BaseTableSectionViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _tableCells = [NSMutableArray array];
    }
    return self;
}

- (NSMutableArray<id<TableCellViewModelProtocol>>*)cells {
    return _tableCells;
}

- (void)setCells:(NSMutableArray<id<TableCellViewModelProtocol>> *)cells {
    _tableCells = cells;
}

/**
 用户自定义事件：比如，在View上添加了一个按钮，开关等
 
 @param tableView Table
 @param section section
 @param userData 用户自定义数据
 */
- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData {
    NSLog(@"%s", __FUNCTION__);
}

@end
