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
// View使用的所有类名
+ (NSArray<NSString*>*)viewClassNames {
    NSString* vName = NSStringFromClass([TDGoalItemCell class]);
    return @[vName];
}

// View使用的类名
- (NSString*)viewClassName {
    NSString* vName = NSStringFromClass([TDGoalItemCell class]);
    return vName;
}

- (BOOL)isAutoHeight {
    return YES;
}

// upate view
- (void)updateView:(UIView*)view {
    //GoalModel* gm = (GoalModel*)self.dataModel;
    TDGoalItemCell* tView = (TDGoalItemCell*)view;
    //tView.labelTitle.text = gm.title;
    tView.labelTitle.text = @"标题";
    tView.labelDetail.text = @"下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义\
    下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义\
    下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义\
    下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义下面来看下,如何删除和增加约束 最后,附个addConstraint 函数的意义\
    ";
}

// click event
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%s", __FUNCTION__);
    [tableView reloadData];
}

@end
