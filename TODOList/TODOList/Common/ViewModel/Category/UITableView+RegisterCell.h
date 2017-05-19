//
//  UITableView+RegisterCell.h
//  TODOList
//
//  Created by SMC-MAC on 2017/5/19.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableSectionViewModelProtocol.h"

@interface UITableView (RegisterCell)

- (void)registerCell:(NSSet<NSString*>*)cellNames;

@end
