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

@protocol TableCellViewModelProtocol <TableBaseViewModelProtocol>

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END

#endif /* TableCellViewModelProtocol_h */
