//
//  GoalEnum.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalEnum.h"

@implementation GoalEnum

+ (NSString*)stringWithReminderRepeat:(Reminder_Repeat)repeat {
    NSString* repeatStr = @"";
    
    switch (repeat) {
        case Reminder_Repeat_None:
            repeatStr = @"不重复";
            break;
        case Reminder_Repeat_Day:
            repeatStr = @"每天";
            break;
        case Reminder_Repeat_Week:
            repeatStr = @"每周";
            break;
        case Reminder_Repeat_Month:
            repeatStr = @"每月";
            break;
        case Reminder_Repeat_Year:
            repeatStr = @"每年";
            break;
    }
    
    return repeatStr;
}

+ (NSArray<id<SelectableDelegate>>*)reminderRepeatSelectItems; {
    NSMutableArray* mary = [NSMutableArray array];
    [mary addObject:[SelectItem itemWithTitle:[self stringWithReminderRepeat:Reminder_Repeat_None] value:Reminder_Repeat_None]];
    [mary addObject:[SelectItem itemWithTitle:[self stringWithReminderRepeat:Reminder_Repeat_Day] value:Reminder_Repeat_Day]];
    [mary addObject:[SelectItem itemWithTitle:[self stringWithReminderRepeat:Reminder_Repeat_Week] value:Reminder_Repeat_Week]];
    [mary addObject:[SelectItem itemWithTitle:[self stringWithReminderRepeat:Reminder_Repeat_Month] value:Reminder_Repeat_Month]];
    [mary addObject:[SelectItem itemWithTitle:[self stringWithReminderRepeat:Reminder_Repeat_Year] value:Reminder_Repeat_Year]];
    
    return mary;
}

@end
