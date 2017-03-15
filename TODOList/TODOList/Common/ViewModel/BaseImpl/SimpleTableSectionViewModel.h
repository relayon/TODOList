//
//  SimpleTableSectionViewModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableBaseViewModel.h"
#import "TableSectionViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleTableSectionViewModel : TableBaseViewModel <TableSectionViewModelProtocol>


/**
 创建一个空的Section

 @return Section
 */
+ (instancetype)model;

@end

NS_ASSUME_NONNULL_END
