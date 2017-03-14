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

@interface SelectDateVM ()
@property (nonatomic, weak) GoalModel* goalModel;

@property (nonatomic, strong) NSDate* fireDate;

@end

@implementation SelectDateVM

- (void)updateWithGoalModel:(GoalModel*)goalModel {
    self.goalModel = goalModel;
    
    self.fireDate = self.goalModel.fireDate;
}

- (NSString*)title {
    return @"时间";
}

- (NSString*)detail {
    return [self.fireDate smc_string];
}

- (void)bind {
    self.goalModel.fireDate = self.fireDate;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"common" bundle:nil];
    DatePickerViewController* vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass([DatePickerViewController class])];
    [vc setSelectedDate:self.fireDate];
    vc.onSelectDate = ^(NSDate* date) {
        self.fireDate = date;
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self.controller.navigationController pushViewController:vc animated:YES];
}

- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

@end
