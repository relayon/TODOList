//
//  GoalTipVM.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableBaseViewModel.h"
#import "BaseTableSectionViewModel.h"

#import "GoalModel.h"

@interface GoalTipVM : BaseTableSectionViewModel

- (NSString*)title;

@property (nonatomic, assign) Reminder_Way reminderWay;

@end
