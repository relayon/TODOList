//
//  SelectRepeatCellVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SelectRepeatCellVM.h"
#import "GoalModel.h"
#import "SelectItemViewController.h"

@interface SelectRepeatCellVM ()

@property (nonatomic, weak) GoalModel* goalModel;
@property (nonatomic, assign) Reminder_Repeat repeat;

@end

@implementation SelectRepeatCellVM
/**
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)smc_bindDataModel:(GoalModel*)dataModel {
    self.goalModel = dataModel;
    self.repeat = self.goalModel.repeat;
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)smc_saveToDataModel {
    self.goalModel.repeat = self.repeat;
}

- (NSString*)title {
    return @"重复";
}

- (NSString*)detail {
    return [GoalEnum stringWithReminderRepeat:self.repeat];
}

/**
 TableCell被选中的回调
 
 @param tableView Table
 @param indexPath index
 */
- (void)smc_tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"common" bundle:nil];
    SelectItemViewController* vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([SelectItemViewController class])];
    vc.dataList = [GoalEnum reminderRepeatSelectItems];
    vc.selectedItem = [SelectItem itemWithTitle:[GoalEnum stringWithReminderRepeat:self.repeat] value:self.repeat];
    vc.onSelectItem = ^(SelectItem* item) {
        self.repeat = item.value;
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    [[self smc_controller].navigationController pushViewController:vc animated:YES];
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"common" bundle:nil];
//    SelectItemViewController* vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([SelectItemViewController class])];
//    vc.dataList = [GoalEnum reminderRepeatSelectItems];
//    vc.selectedItem = [SelectItem itemWithTitle:[GoalEnum stringWithReminderRepeat:self.repeat] value:self.repeat];
//    vc.onSelectItem = ^(SelectItem* item) {
//        self.repeat = item.value;
//        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    };
//    [self.controller.navigationController pushViewController:vc animated:YES];
//}

//- (UITableViewCellAccessoryType)accessoryType {
//    return UITableViewCellAccessoryDisclosureIndicator;
//}


@end
