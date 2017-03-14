//
//  GoalTipVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalTipVM.h"

@interface GoalTipVM ()
@property (nonatomic, weak) GoalModel* goalModel;

@end

@implementation GoalTipVM

- (void)updateWithGoalModel:(GoalModel*)goalModel {
    self.goalModel = goalModel;
    
    self.reminderWay = self.goalModel.reminderWay;
}

- (NSString*)title {
    return @"提醒";
}

- (BOOL)isTip {
    return (self.reminderWay != Reminder_Way_None);
}

- (NSInteger)numberOfRows {
    if (![self isTip]) {
        return 0;
    } else {
        return [super numberOfRows];
    }
}

- (void)bind {
    self.goalModel.reminderWay = self.reminderWay;
}

- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData {
    UISwitch* sender = (UISwitch*)userData;
    if (sender.isOn) {
        self.reminderWay = Reminder_Way_Notify;
    } else {
        self.reminderWay = Reminder_Way_None;
    }
    
    [tableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:UITableViewRowAnimationNone];
}

@end
