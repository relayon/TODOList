//
//  GoalModel+Extension.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalModel+Extension.h"

@implementation GoalModel (Extension)

- (BOOL)isTip {
    return (self.reminderWay != Reminder_Way_None);
}

@end
