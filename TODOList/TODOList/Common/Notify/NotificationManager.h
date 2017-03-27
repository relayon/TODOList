//
//  NotificationManager.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/27.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NotificationConfig.h"

@interface NotificationManager : NSObject
// 单例声明
SINGLETON_DCL;

/**
 请求通知授权
 */
- (void)requestNotificationPermission;

/**
 添加通知
 
 @param config 配置信息
 */
- (void)scheduleNotification:(NotificationConfig*)config;

/**
 删除通知
 
 @param config 配置信息
 */
- (void)removeNotification:(NotificationConfig*)config;

@end
