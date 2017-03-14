//
//  GoalModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalModel.h"
#import "NSString+Extension.h"

@implementation GoalModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self p_init];
    }
    return self;
}

- (void)p_init {
    self.goalId = [NSString smc_UUID];
    self.createDate = [NSDate date];
}

@end
