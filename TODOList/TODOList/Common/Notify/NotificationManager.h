//
//  NotificationManager.h
//  MyNotify
//
//  Created by SMC-MAC on 17/5/17.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UserNotifications;

@interface NotificationManager : NSObject
// 单例声明
SINGLETON_DCL;

@property (nonatomic, strong) UNUserNotificationCenter* notificationCenter;
// 请求授权
- (void)requestAuth:(void (^)(BOOL result, NSError* msg))_callback;


// test
- (void)test;

- (NSString*)get_string;

@end
