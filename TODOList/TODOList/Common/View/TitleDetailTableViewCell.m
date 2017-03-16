//
//  TitleDetailTableViewCell.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TitleDetailTableViewCell.h"
#import "TitleDetailViewProtocol.h"

@interface TitleDetailTableViewCell ()

@end

@implementation TitleDetailTableViewCell

#pragma mark -- TableBaseCellViewProtocol
/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 @param tableView table
 @param indexPath indexPath
 */
- (void)updateWithViewModel:(id<TitleDetailViewProtocol>)viewModel withTableView:(UITableView*)tableView forIndexPath:(NSIndexPath*)indexPath {
    [super updateWithViewModel:viewModel withTableView:tableView forIndexPath:indexPath];
    
    [self updateWithViewModel:viewModel];
}

/**
 更新数据
 
 @param viewModel 模型
 */
- (void)updateWithViewModel:(id<TitleDetailViewProtocol>)viewModel {
    [self setTitle:viewModel.title detail:viewModel.detail];
}

/**
 设置标题和详情
 
 @param title 标题
 @param detail 详情
 */
- (void)setTitle:(NSString*)title detail:(NSString*)detail {
    self.labelTitle.text = title;
    self.labelDetail.text = detail;
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
