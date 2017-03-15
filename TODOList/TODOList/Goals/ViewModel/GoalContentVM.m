//
//  GoalContentVM.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalContentVM.h"
#import "GoalModel.h"

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

- (void)smc_bindDataModel:(GoalModel*)dataModel {
    self.goalModel = dataModel;
    self.content = self.goalModel.content;
}

/**
 在对View的数据修改后，把修改的数据保存到数据模型
 */
- (void)smc_saveToDataModel {
    self.goalModel.content = self.content;
}

@end
