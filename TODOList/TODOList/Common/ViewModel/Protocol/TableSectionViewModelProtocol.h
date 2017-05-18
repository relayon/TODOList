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

@protocol TableSectionViewModelProtocol <TableBaseViewModelProtocol>

@required
@property (nullable, nonatomic, strong) NSMutableArray<id<TableCellViewModelProtocol>>* cells;

@end

NS_ASSUME_NONNULL_END

#endif /* TableSectionViewModelProtocol_h */
