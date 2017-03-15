//
//  SimpleTableCellView.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableCellView.h"
#import "TableCellViewModelProtocol.h"

@interface SimpleTableCellView ()

@property (nonatomic, weak) id<TableCellViewModelProtocol> viewModel;
@property (nonatomic, weak) UITableView* tableView;
@property (nonatomic, copy) NSIndexPath* indexPath;

@end

@implementation SimpleTableCellView

#pragma mark -- TableBaseCellViewProtocol
/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 @param tableView table
 @param indexPath indexPath
 */
- (void)updateWithViewModel:(id)viewModel withTableView:(UITableView*)tableView forIndexPath:(NSIndexPath*)indexPath {
    self.viewModel = viewModel;
    self.tableView = tableView;
    self.indexPath = indexPath;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
