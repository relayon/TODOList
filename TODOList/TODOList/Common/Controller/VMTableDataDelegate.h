//
//  VMTableDataDelegate.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableSectionViewModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface VMTableDataDelegate : NSObject <UITableViewDataSource, UITableViewDelegate>

+ (instancetype)delegateWithData:(NSArray<id<TableSectionViewModelProtocol>>*)dataList;

@end

NS_ASSUME_NONNULL_END
