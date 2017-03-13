//
//  GoalTableViewCell.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalTableViewCell.h"

@interface GoalTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@end

@implementation GoalTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
