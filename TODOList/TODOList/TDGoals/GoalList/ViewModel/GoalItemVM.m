//
//  GoalItemVM.m
//  TODOList
//
//  Created by SMC-MAC on 2017/5/19.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalItemVM.h"
#import "GoalModel.h"
#import "TDGoalItemCell.h"

@implementation GoalItemVM
// view name
+ (NSString*)viewClassName {
    NSString* vName = NSStringFromClass([TDGoalItemCell class]);
    return vName;
}

// upate view
- (void)updateView:(UIView*)view {
    GoalModel* gm = (GoalModel*)self.dataModel;
    TDGoalItemCell* tView = (TDGoalItemCell*)view;
    tView.labelTitle.text = gm.title;
}

// click event
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%s", __FUNCTION__);
}

@end
