//
//  BaseTableSection.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableSection.h"

@interface BaseTableSection ()

@end

@implementation BaseTableSection

- (void)updateViewWithModel:(TableSectionModel*)model withTableView:(UITableView*)tableView forSection:(NSInteger)section {
    self.viewModel = model;
    
    self.tableView = tableView;
    self.section = section;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
