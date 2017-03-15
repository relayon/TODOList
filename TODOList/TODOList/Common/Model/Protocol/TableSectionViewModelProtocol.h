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

@protocol TableCellViewModelProtocol <NSObject, TableBaseViewModelProtocol>

/**
 用户自定义事件：比如，在View上添加了一个按钮，开关等

 @param tableView Table
 @param section section
 @param userData 用户自定义数据
 */
- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData;

@end

#endif /* TableSectionViewModelProtocol_h */
