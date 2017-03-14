//
//  BaseTableSection.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableSectionModel.h"

@interface BaseTableSection : UIView

@property (nonatomic, weak) UITableView* tableView;
@property (nonatomic, weak) TableSectionModel* viewModel;
@property (nonatomic, assign) NSInteger section;

- (void)updateViewWithModel:(TableSectionModel*)model withTableView:(UITableView*)tableView forSection:(NSInteger)section;

@end
