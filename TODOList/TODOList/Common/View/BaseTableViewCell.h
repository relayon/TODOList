//
//  BaseTableViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableCellModel.h"

@interface BaseTableViewCell : UITableViewCell

- (void)updateViewWithModel:(TableCellModel*)model;

@end
