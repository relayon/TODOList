//
//  SelectRepeatCellVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SelectRepeatCellVM.h"

@interface SelectRepeatCellVM ()

@property (nonatomic, weak) GoalModel* goalModel;
@property (nonatomic, assign) Reminder_Repeat repeat;

@end

@implementation SelectRepeatCellVM

- (void)updateWithGoalModel:(GoalModel*)goalModel {
    self.goalModel = goalModel;
    
    self.repeat = self.goalModel.repeat;
}

- (NSString*)title {
    return @"重复";
}

- (NSString*)detail {
    NSString* repeatStr = @"";
    
    switch (self.repeat) {
        case Reminder_Repeat_None:
            repeatStr = @"不重复";
            break;
        case Reminder_Repeat_Day:
            repeatStr = @"每天";
            break;
        case Reminder_Repeat_Week:
            repeatStr = @"每周";
            break;
        case Reminder_Repeat_Month:
            repeatStr = @"每月";
            break;
        case Reminder_Repeat_Year:
            repeatStr = @"每年";
            break;
    }
    
    return repeatStr;
}

- (void)bind {
    self.goalModel.repeat = self.repeat;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
