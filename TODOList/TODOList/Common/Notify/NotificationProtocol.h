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

NS_ASSUME_NONNULL_BEGIN

@protocol NotificationProtocol <NSObject>

@required
/**
 请求通知授权
 */
- (void)requestAuthorization:(void (^)(BOOL granted, NSError *__nullable error))_callback;

/**
 获取通知是否可用

 @param _callback 回调
 */
- (void)getNotifyStatus:(void (^)(BOOL enabled))_callback;


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

NS_ASSUME_NONNULL_END

#endif /* NotificationProtocol_h */
