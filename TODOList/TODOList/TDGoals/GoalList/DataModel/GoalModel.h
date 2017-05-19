//
//  GoalModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GoalEnum.h"
#import "PModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface GoalModel : PModel

// ID
@property (nonatomic, copy) NSString* goalId;
// 包含的内容类型
@property (nonatomic, assign) Goal_Content_Type contentType;
// 任务状态
@property (nonatomic, assign) Goal_Status status;
// 提醒依据
@property (nonatomic, assign) Reminder_Type reminderType;
// 重复
@property (nonatomic, assign) Reminder_Repeat repeat;
// 提醒方式
@property (nonatomic, assign) Reminder_Way reminderWay;

// 任务的标题，不超过
@property (nonatomic, copy) NSString* title;
// 备注，不超过140个字
@property (nullable, nonatomic, copy) NSString* note;

// 排序, order是sqlite的关键字，不能使用，否则LKDB会报错
@property (nonatomic, assign) float weight;

// 提醒日期
@property (nullable, nonatomic, strong) NSDate* fireDate;

// 创建日期
@property (nonatomic, strong) NSDate* createDate;
// 最后修改日期
@property (nonatomic, strong) NSDate* lastModifyDate;



// 基于位置的提醒
// 纬度
@property (nonatomic, assign) double latitude;
// 经度
@property (nonatomic, assign) double longitude;
// 距离
@property (nonatomic, assign) double distance;

@end

NS_ASSUME_NONNULL_END
