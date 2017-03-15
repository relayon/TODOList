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
#import "SelectRepeatCellVM.h"

@interface GoalTipVM ()
@property (nonatomic, weak) GoalModel* goalModel;

@end

@implementation GoalTipVM

- (void)updateWithGoalModel:(GoalModel*)goalModel {
    self.goalModel = goalModel;
    
    self.reminderWay = self.goalModel.reminderWay;
    
    [self p_buildCells];
}

- (NSString*)title {
    return @"提醒";
}

- (void)bind {
    self.goalModel.reminderWay = self.reminderWay;
}

/**
 用户自定义事件：比如，在View上添加了一个按钮，开关等
 
 @param tableView Table
 @param section section
 @param userData 用户自定义数据
 */
- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData {
    UISwitch* sender = (UISwitch*)userData;
    if (sender.isOn) {
        self.reminderWay = Reminder_Way_Notify;
    } else {
        self.reminderWay = Reminder_Way_None;
    }
    
    [self p_buildCells];
    
    UITableViewRowAnimation anim = UITableViewRowAnimationNone;
    [tableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:anim];
}

//- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData {
//    UISwitch* sender = (UISwitch*)userData;
//    if (sender.isOn) {
//        self.reminderWay = Reminder_Way_Notify;
//    } else {
//        self.reminderWay = Reminder_Way_None;
//    }
//    
//    [self p_buildCells];
//    
//    UITableViewRowAnimation anim = UITableViewRowAnimationNone;
//    [tableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:anim];
//}

#pragma mark -- private functions
- (BOOL)p_isTip {
    return (self.reminderWay != Reminder_Way_None);
}

- (void)p_buildCells {
    [self.cells removeAllObjects];
    if ([self p_isTip]) {
        NSString* selectDateCellName = NSStringFromClass([TitleDetailTableViewCell class]);
        // 时间
        SelectDateVM* selectDateVM = [SelectDateVM modelWithController:[self smc_controller] viewClassName:selectDateCellName height:44];
        [selectDateVM smc_bindDataModel:self.goalModel];
        [self.cells addObject:selectDateVM];
        
        // 重复
//        SelectRepeatCellVM* repeatVM = [SelectRepeatCellVM modelWithController:[self smc_controller] cellName:selectDateCellName height:44];
//        [repeatVM updateWithGoalModel:self.goalModel];
//        [self.cells addObject:repeatVM];
    }
}

@end
