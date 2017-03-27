//
//  NotifyHandler10.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/27.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "NotifyHandler10.h"
@import UserNotifications;

@interface NotifyHandler10 () <UNUserNotificationCenterDelegate>{
    UNUserNotificationCenter* _notifyCenter;
}

@end

@implementation NotifyHandler10

/**
 请求通知授权
 */
- (void)requestAuthorization:(void (^)(BOOL granted, NSError *__nullable error))_callback {
    UNAuthorizationOptions options = UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert;
    [_notifyCenter requestAuthorizationWithOptions:options completionHandler:_callback];
}

/**
 获取通知是否可用
 
 @param _callback 回调
 */
- (void)getNotifyStatus:(void (^)(BOOL enabled))_callback {
    [_notifyCenter getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
        if (_callback) {
            BOOL en = (settings.authorizationStatus == UNAuthorizationStatusAuthorized);
            _callback(en);
        }
    }];
}

/**
 添加通知
 
 @param config 配置信息
 */
- (void)scheduleNotification:(NotificationConfig*)config {
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    
    UNMutableNotificationContent *content = [UNMutableNotificationContent new];
    content.body = config.notifyBody;
    content.sound = [UNNotificationSound defaultSound];
//    content.categoryIdentifier = config.categoryId;
//    content.userInfo = @{@"config":config};
    
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:config.notifyId
                                                                          content:content
                                                                          trigger:[UNTimeIntervalNotificationTrigger triggerWithTimeInterval:config.delaySeconds repeats:NO]];
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        //NSLog(@"%@",error);
    }];
}

/**
 删除通知
 
 @param config 配置信息
 */
- (void)removeNotification:(NotificationConfig*)config {
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    [center removePendingNotificationRequestsWithIdentifiers:@[config.notifyId]];
}

#pragma mark -- 
- (instancetype)init
{
    self = [super init];
    if (self) {
        _notifyCenter = [UNUserNotificationCenter currentNotificationCenter];
        _notifyCenter.delegate = self;
    }
    return self;
}

#pragma mark -- UNUserNotificationCenterDelegate
// The method will be called on the delegate only if the application is in the foreground. If the method is not implemented or the handler is not called in a timely manner then the notification will not be presented. The application can choose to have the notification presented as a sound, badge, alert and/or in the notification list. This decision should be based on whether the information in the notification is otherwise visible to the user.
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
       willPresentNotification:(UNNotification *)notification
         withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {
    
    completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert);
}

// The method will be called on the delegate when the user responded to the notification by opening the application, dismissing the notification or choosing a UNNotificationAction. The delegate must be set before the application returns from applicationDidFinishLaunching:.
- (void)userNotificationCenter:(UNUserNotificationCenter *)center
didReceiveNotificationResponse:(UNNotificationResponse *)response
         withCompletionHandler:(void(^)())completionHandler {
//    NSString *actid = response.actionIdentifier;
//    NSLog(@"%s - %@", __FUNCTION__, actid);
    completionHandler();
}

@end
