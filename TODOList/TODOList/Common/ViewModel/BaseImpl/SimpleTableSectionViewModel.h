//
//  SimpleTableSectionViewModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleTableBaseViewModel.h"
#import "TableSectionViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleTableSectionViewModel : SimpleTableBaseViewModel <TableSectionViewModelProtocol>

// 标题
- (NSString*)title;
// 详情
- (NSString*)detail;



@end

NS_ASSUME_NONNULL_END
