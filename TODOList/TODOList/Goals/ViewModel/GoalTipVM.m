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

/**
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)bindDataModel:(id)dataModel {
    self.goalModel = dataModel;
    self.reminderWay = self.goalModel.reminderWay;
    [self p_buildCells:nil forSection:0];
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)saveToDataModel {
    self.goalModel.reminderWay = self.reminderWay;
}

//- (void)updateWithGoalModel:(GoalModel*)goalModel {
//    self.goalModel = goalModel;
//    
//    self.reminderWay = self.goalModel.reminderWay;
//    
//    [self p_buildCells];
//}

- (NSString*)title {
    return @"提醒";
}

//- (void)bind {
//    self.goalModel.reminderWay = self.reminderWay;
//}

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
    
    [self p_buildCells:tableView forSection:section];
    UITableViewRowAnimation anim = UITableViewRowAnimationFade;
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

- (void)p_buildCells:(UITableView*)tableView forSection:(NSInteger)section {
    NSLog(@"%s", __FUNCTION__);
    [self.cells removeAllObjects];
    
    if ([self p_isTip]) {
        NSString* selectDateCellName = NSStringFromClass([TitleDetailTableViewCell class]);
        // 时间
        SelectDateVM* selectDateVM = [SelectDateVM modelWithController:self.controller viewClassName:selectDateCellName height:44];
        [selectDateVM bindDataModel:self.goalModel];
        [self.cells addObject:selectDateVM];
        
        // 重复
        SelectRepeatCellVM* repeatVM = [SelectRepeatCellVM modelWithController:self.controller viewClassName:selectDateCellName height:44];
        [repeatVM bindDataModel:self.goalModel];
        [self.cells addObject:repeatVM];
        
//        NSMutableArray* mary = [NSMutableArray array];
//        for (NSInteger row = 0; row < self.cells.count; row++) {
//            [mary addObject:[NSIndexPath indexPathForRow:row inSection:section]];
//        }
//        [tableView insertRowsAtIndexPaths:mary withRowAnimation:UITableViewRowAnimationNone];
    } else {
//        NSMutableArray* mary = [NSMutableArray array];
//        for (NSInteger row = 0; row < self.cells.count; row++) {
//            [mary addObject:[NSIndexPath indexPathForRow:row inSection:section]];
//        }
//        [self.cells removeAllObjects];
//        [tableView deleteRowsAtIndexPaths:mary withRowAnimation:UITableViewRowAnimationNone];
    }
}

@end
