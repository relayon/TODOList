//
//  NotificationManager.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/27.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "NotificationManager.h"
#import "SDVersion.h"
#import "NotifyHandler09.h"
#import "NotifyHandler10.h"

@interface NotificationManager () {
    id<NotificationProtocol> _notifyImpl;
}

@end

@implementation NotificationManager

// 单例实现
SINGLETON_IMP;

- (void)p_initNotifyImpl {
    if ([SDVersion versionGreaterThanOrEqualTo:@"10"]) {
        _notifyImpl = [[NotifyHandler10 alloc] init];
    } else {
        _notifyImpl = [[NotifyHandler09 alloc] init];
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self p_initNotifyImpl];
    }
    return self;
}

/**
 请求通知授权
 */
- (void)requestNotificationPermission {
    [_notifyImpl requestNotificationPermission];
}

/**
 添加通知
 
 @param config 配置信息
 */
- (void)scheduleNotification:(NotificationConfig*)config {
    [_notifyImpl scheduleNotification:config];
}

/**
 删除通知
 
 @param config 配置信息
 */
- (void)removeNotification:(NotificationConfig*)config {
    [_notifyImpl removeNotification:config];
}



@end
