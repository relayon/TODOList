//
//  BaseTableViewCell.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

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
