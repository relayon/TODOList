//
//  GoalContentVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalContentVM.h"

@interface GoalContentVM ()
@property (nonatomic, weak) GoalModel* goalModel;

@end

@implementation GoalContentVM

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.placeHolder = L(@"请输入...");
    }
    return self;
}

- (void)updateWithGoalModel:(GoalModel*)goalModel {
    self.goalModel = goalModel;
    self.content = goalModel.content;
}

- (void)bind {
    self.goalModel.content = self.content;
}

// 绑定字段
//- (void)setContent:(NSString *)content {
//    _content = content;
//}

@end
