//
//  GoalTipVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalTipVM.h"
#import "TitleDetailTableViewCell.h"
#import "SelectDateVM.h"

@interface GoalTipVM ()
@property (nonatomic, weak) GoalModel* goalModel;

@end

@implementation GoalTipVM

- (void)updateWithGoalModel:(GoalModel*)goalModel {
    self.goalModel = goalModel;
    
    self.reminderWay = self.goalModel.reminderWay;
    
    [self p_buildCells];
}

- (void)p_buildCells {
    [self.cells removeAllObjects];
    
    if ([self isTip]) {
        NSString* selectDateCellName = NSStringFromClass([TitleDetailTableViewCell class]);
        SelectDateVM* selectDateVM = [SelectDateVM modelWithController:self.controller cellName:selectDateCellName height:44];
        [selectDateVM updateWithGoalModel:self.goalModel];
        [self.cells addObject:selectDateVM];
    }
}

- (NSString*)title {
    return @"提醒";
}

- (BOOL)isTip {
    return (self.reminderWay != Reminder_Way_None);
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
    
    [self p_buildCells];
    [tableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:UITableViewRowAnimationNone];
}

@end
