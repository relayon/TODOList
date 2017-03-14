//
//  SelectRepeatCellVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SelectRepeatCellVM.h"
#import "SelectItemViewController.h"

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
    return [GoalEnum stringWithReminderRepeat:self.repeat];
}

- (void)bind {
    self.goalModel.repeat = self.repeat;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"common" bundle:nil];
    SelectItemViewController* vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([SelectItemViewController class])];
    vc.dataList = [GoalEnum reminderRepeatSelectItems];
    vc.selectedItem = [SelectItem itemWithTitle:[GoalEnum stringWithReminderRepeat:self.repeat] value:self.repeat];
    vc.onSelectItem = ^(SelectItem* item) {
        self.repeat = item.value;
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.controller.navigationController pushViewController:vc animated:YES];
}

- (UITableViewCellAccessoryType)accessoryType {
    return UITableViewCellAccessoryDisclosureIndicator;
}


@end
