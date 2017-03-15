//
//  GoalEnum.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectItem.h"

/**
 任务包含的内容

 - Goal_Content_Type_TEXT: 文本
 - Goal_Content_Type_Audio: 音频
 - Goal_Content_Type_Image: 图片
 - Goal_Content_Type_Video: 视频
 */
typedef NS_OPTIONS(NSInteger, Goal_Content_Type) {
    Goal_Content_Type_TEXT      = 0,
    Goal_Content_Type_Audio     = 1 << 1,
    Goal_Content_Type_Image     = 1 << 2,
    Goal_Content_Type_Video     = 1 << 3,
};

/**
 任务状态

 - Goal_Status_None: 初始状态-（默认）
 - Goal_Status_Finish: 已完成
 - Goal_Status_Failure: 未完成
 - Goal_Status_Delete: 已删除
 */
typedef NS_ENUM(NSInteger, Goal_Status) {
    Goal_Status_None,
    Goal_Status_Finish,
    Goal_Status_Failure,
    Goal_Status_Delete,
};

/**
 任务提醒依据

 - Reminder_Type_None: 不提醒
 - Reminder_Type_Time: 根据时间提醒
 - Reminder_Type_Location: 根据位置提醒
 */
typedef NS_ENUM(NSInteger, Reminder_Type) {
    Reminder_Type_None,
    Reminder_Type_Time,
    Reminder_Type_Location,
};

/**
 根据时间提醒的重复类型

 - Reminder_Repeat_None: 不重复
 - Reminder_Repeat_Day: 每天
 - Reminder_Repeat_Week: 每周
 - Reminder_Repeat_Month: 每月
 - Reminder_Repeat_Year: 每年
 */
typedef NS_ENUM(NSInteger, Reminder_Repeat) {
    Reminder_Repeat_None,
    Reminder_Repeat_Day,
    Reminder_Repeat_Week,
    Reminder_Repeat_Month,
    Reminder_Repeat_Year,
};

/**
 提醒方式

 - Reminder_Way_None: 不提醒
 - Reminder_Way_Notify: 本地通知
 - Reminder_Way_Vibrate: 震动
 - Reminder_Way_Alarm: 闹钟
 - Reminder_Way_Email: 邮件
 - Reminder_Way_SMS: 短信
 - Reminder_Way_Wechat: 微信
 - Reminder_Way_QQ: QQ
 */
typedef NS_OPTIONS(NSInteger, Reminder_Way) {
    Reminder_Way_None       = 0,
    Reminder_Way_Notify     = 1 << 0,
    Reminder_Way_Vibrate    = 1 << 1,
    Reminder_Way_Alarm      = 1 << 2,
    Reminder_Way_Email      = 1 << 3,
    Reminder_Way_SMS        = 1 << 4,
    Reminder_Way_Wechat     = 1 << 5,
    Reminder_Way_QQ         = 1 << 6,
};


@interface GoalEnum : NSObject
// 枚举转字符串
+ (NSString*)stringWithReminderRepeat:(Reminder_Repeat)repeat;
+ (NSArray<id<SelectableDelegate>>*)reminderRepeatSelectItems;

@end




