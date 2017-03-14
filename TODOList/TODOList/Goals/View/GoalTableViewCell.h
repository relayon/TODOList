//
//  GoalTableViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoalModel.h"

@interface GoalTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

- (void)updateViewWithModel:(GoalModel*)model;

@end
