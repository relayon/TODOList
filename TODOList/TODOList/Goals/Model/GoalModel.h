//
//  GoalModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GoalEnum.h"

@interface GoalModel : NSObject

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

// 提醒日期
@property (nonatomic, strong) NSDate* fireDate;
// 基于位置的提醒
// 纬度
@property (nonatomic, assign) double latitude;
// 经度
@property (nonatomic, assign) double longitude;

// 任务的内容
@property (nonatomic, copy) NSString* content;
// 备注
@property (nonatomic, copy) NSString* note;

// 排序
@property (nonatomic, assign) float order;

// 创建日期
@property (nonatomic, strong) NSDate* createDate;
// 最后修改日期
@property (nonatomic, strong) NSDate* lastModifyDate;

@end
