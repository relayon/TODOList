//
//  BaseTableViewSection.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewSectionProtocol.h"

@interface BaseTableViewSection : UIView <TableViewSectionProtocol>

@property (nonatomic, weak) id viewModel;
@property (nonatomic, weak) UITableView* tableView;
@property (nonatomic, assign) NSInteger section;

@end
