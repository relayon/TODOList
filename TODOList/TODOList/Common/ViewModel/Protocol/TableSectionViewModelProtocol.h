//
//  TableSectionViewModelProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableSectionViewModelProtocol_h
#define TableSectionViewModelProtocol_h

#import "TableBaseViewModelProtocol.h"
#import "TableCellViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol TableSectionViewModelProtocol <NSObject, TableBaseViewModelProtocol>

@required
@property (nullable, nonatomic, strong) NSMutableArray<id<TableCellViewModelProtocol>>* cells;

@optional
/**
 用户自定义事件：比如，在View上添加了一个按钮，开关等

 @param tableView Table
 @param section section
 @param userData 用户自定义数据
 */
- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData;

@end

NS_ASSUME_NONNULL_END

#endif /* TableSectionViewModelProtocol_h */
