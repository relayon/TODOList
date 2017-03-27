//
//  NotificationProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/27.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef NotificationProtocol_h
#define NotificationProtocol_h

#import "NotificationConfig.h"

@protocol NotificationProtocol <NSObject>

@required
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

#endif /* NotificationProtocol_h */
