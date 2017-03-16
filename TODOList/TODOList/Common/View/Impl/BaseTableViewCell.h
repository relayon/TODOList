//
//  BaseTableViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCellProtocol.h"

@interface BaseTableViewCell : UITableViewCell <TableViewCellProtocol>

@property (nonatomic, weak) id viewModel;
@property (nonatomic, weak) UITableView* tableView;
@property (nonatomic, copy) NSIndexPath* indexPath;

@end
