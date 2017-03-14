//
//  TitleDetailTableViewCell.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TitleDetailTableViewCell.h"
#import "TableCellModel.h"

@interface TitleDetailTableViewCell ()
@property (nonatomic, weak) TableCellModel* viewModel;

@end

@implementation TitleDetailTableViewCell

- (void)updateViewWithModel:(TableCellModel*)model {
    self.viewModel = model;
    
    self.labelTitle.text = self.viewModel.title;
    self.labelDetail.text = self.viewModel.detail;
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
