//
//  GoalTipVM.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableSectionModel.h"
#import "GoalModel.h"

@interface GoalTipVM : TableSectionModel


@property (nonatomic, assign) Reminder_Way reminderWay;
- (void)updateWithGoalModel:(GoalModel*)goalModel;

@end
