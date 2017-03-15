//
//  TableCellViewModelProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableCellViewModelProtocol_h
#define TableCellViewModelProtocol_h

#import "TableBaseViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol TableCellViewModelProtocol <NSObject, TableBaseViewModelProtocol>

// 可选实现，View可交互
@optional

/**
 TableCell被选中的回调
 
 @param tableView Table
 @param indexPath index
 */
- (void)smc_tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

/**
 用户自定义事件：比如，在Cell上添加了一个按钮，开关等
 
 @param tableView Table
 @param indexPath index
 @param userData 自定义数据
 */
- (void)smc_tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath withData:(id _Nullable)userData;

@end

NS_ASSUME_NONNULL_END

#endif /* TableCellViewModelProtocol_h */
