//
//  SimpleTableSectionViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableSectionViewModel.h"

@interface SimpleTableSectionViewModel () {
    NSMutableArray<id<TableCellViewModelProtocol>>* _tableCells;
}

@end

@implementation SimpleTableSectionViewModel

/**
 创建一个空的Section
 
 @return Section
 */
+ (instancetype)model {
    SimpleTableSectionViewModel* md = [[[self class] alloc] init];
    return md;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
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
    
}

@end
