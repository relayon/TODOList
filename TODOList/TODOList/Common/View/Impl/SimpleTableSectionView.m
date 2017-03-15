//
//  SimpleTableSectionView.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableSectionView.h"
#import "TableSectionViewModelProtocol.h"

@interface SimpleTableSectionView ()

@property (nonatomic, weak) id<TableSectionViewModelProtocol> viewModel;
@property (nonatomic, weak) UITableView* tableView;
@property (nonatomic, assign) NSInteger section;

@end

@implementation SimpleTableSectionView

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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
