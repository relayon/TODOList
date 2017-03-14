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

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)updateViewWithModel:(GoalTipVM*)model withTableView:(UITableView*)tableView forSection:(NSInteger)section {
    [super updateViewWithModel:model withTableView:tableView forSection:section];
    
    self.labelTitle.text = self.viewModel.title;
    BOOL bOn = model.reminderWay != Reminder_Way_None;
    [self.switchView setOn:bOn animated:NO];
}

- (IBAction)onValueChange:(UISwitch *)sender {
    [self.viewModel tableView:self.tableView didSelectSection:self.section withData:sender];
}
@end
