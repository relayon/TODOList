//
//  SelectDateVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SelectDateVM.h"
#import "DatePickerViewController.h"
#import "NSDate+NSString.h"
#import "GoalModel.h"

@interface SelectDateVM ()
@property (nonatomic, weak) GoalModel* goalModel;

@property (nonatomic, strong) NSDate* fireDate;

@end

@implementation SelectDateVM
/**
 绑定数据模型
 
 @param dataModel 数据模型
 */
- (void)bindDataModel:(GoalModel*)dataModel {
    self.goalModel = dataModel;
    if (self.goalModel.fireDate) {
        self.fireDate = self.goalModel.fireDate;
    } else {
        self.fireDate = [NSDate date];
    }
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)saveToDataModel {
    self.goalModel.fireDate = self.fireDate;
}

#pragma mark -- TitleDetailViewProtocol
- (NSString*)title {
    return @"时间";
}

- (NSString*)detail {
    return [self.fireDate smc_string];
}

#pragma mark --
/**
 TableCell被选中的回调
 
 @param tableView Table
 @param indexPath index
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"common" bundle:nil];
    DatePickerViewController* vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([DatePickerViewController class])];
    vc.pickerMode = UIDatePickerModeCountDownTimer;
    [vc setSelectedDate:self.fireDate];
    vc.onSelectDate = ^(NSDate* date) {
        self.fireDate = date;
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.controller.navigationController pushViewController:vc animated:YES];
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"common" bundle:nil];
//    DatePickerViewController* vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([DatePickerViewController class])];
//    [vc setSelectedDate:self.fireDate];
//    vc.onSelectDate = ^(NSDate* date) {
//        self.fireDate = date;
//        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
//    };
//    [self.controller.navigationController pushViewController:vc animated:YES];
//}
//
//- (UITableViewCellAccessoryType)accessoryType {
//    return UITableViewCellAccessoryDisclosureIndicator;
//}

- (void)dealloc {
    
}

@end
