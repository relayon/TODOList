//
//  BaseTableViewSection.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableViewSection.h"

@implementation BaseTableViewSection

/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 @param tableView table
 @param section section
 */
- (void)updateWithViewModel:(id)viewModel withTableView:(UITableView*)tableView forSection:(NSInteger)section {
    self.viewModel = viewModel;
    self.tableView = tableView;
    self.section = section;
}

@end
