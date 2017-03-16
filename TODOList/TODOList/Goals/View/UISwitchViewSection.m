//
//  UISwitchViewSection.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "UISwitchViewSection.h"
#import "GoalTipVM.h"

@interface UISwitchViewSection ()
- (IBAction)onValueChange:(UISwitch *)sender;
@end

@implementation UISwitchViewSection

/**
根据ViewModel更新View

@param viewModel ViewModel
@param tableView table
@param section section
*/
- (void)updateWithViewModel:(id)viewModel withTableView:(UITableView*)tableView forSection:(NSInteger)section {
    [super updateWithViewModel:viewModel withTableView:tableView forSection:section];
    
    GoalTipVM* goalVM = viewModel;
    self.labelTitle.text = goalVM.title;
    BOOL bOn = goalVM.reminderWay != Reminder_Way_None;
    [self.switchView setOn:bOn animated:NO];
}

//- (void)updateViewWithModel:(GoalTipVM*)model withTableView:(UITableView*)tableView forSection:(NSInteger)section {
//    [super updateViewWithModel:model withTableView:tableView forSection:section];
//    
//    self.labelTitle.text = self.viewModel.title;
//    BOOL bOn = model.reminderWay != Reminder_Way_None;
//    [self.switchView setOn:bOn animated:NO];
//}

- (IBAction)onValueChange:(UISwitch *)sender {
    [self.viewModel tableView:self.tableView didSelectSection:self.section withData:sender];
}
@end
