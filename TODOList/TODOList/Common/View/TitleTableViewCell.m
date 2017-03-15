//
//  TitleTableViewCell.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TitleTableViewCell.h"
#import "TableCellViewModelProtocol.h"

@implementation TitleTableViewCell

#pragma mark -- TableBaseCellViewProtocol
/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 @param tableView table
 @param indexPath indexPath
 */
- (void)updateWithViewModel:(id<TableCellViewModelProtocol>)viewModel withTableView:(UITableView*)tableView forIndexPath:(NSIndexPath*)indexPath {
    [super updateWithViewModel:viewModel withTableView:tableView forIndexPath:indexPath];
    self.labelTitle.text = [viewModel title];
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
