//
//  NotificationManager.m
//  MyNotify
//
//  Created by SMC-MAC on 17/5/17.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "NotificationManager.h"

@interface NotificationManager () <UNUserNotificationCenterDelegate>

@end

@implementation NotificationManager
// 单例实现
SINGLETON_IMP;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.notificationCenter = [UNUserNotificationCenter currentNotificationCenter];
        self.notificationCenter.delegate = self;
        [self p_registCategory];
    }
    return self;
}

// 请求授权
- (void)requestAuth:(void (^)(BOOL result, NSError* msg))_callback {
    UNAuthorizationOptions options = UNAuthorizationOptionBadge | UNAuthorizationOptionSound | UNAuthorizationOptionAlert;
    [self.notificationCenter requestAuthorizationWithOptions:options completionHandler:_callback];
}

#pragma mark -- UNUserNotificationCenterDelegate
// 当App在前台运行的时候收到通知，会调用此函数
// 在函数中通过调用completionHandler设置要显示通知的式样
// 如果不调用completionHandler，则不显示通知
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {
    completionHandler(UNNotificationPresentationOptionBadge | UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert);
}

// 需要在applicationDidFinishLaunching中设置代理
// 在用户响应通知时，回调到这里
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void(^)())completionHandler __IOS_AVAILABLE(10.0) {
    NSLog(@"%s", __FUNCTION__);
    completionHandler();
    
    [self test];
}

- (void)p_registCategory {
    NSMutableSet<UNNotificationCategory*>* mset = [NSMutableSet set];
    {
        NSMutableArray<UNNotificationAction*>* actions = [NSMutableArray array];
        
        {
            NSString* actionName = @"action1";
            UNNotificationAction* action = [UNNotificationAction actionWithIdentifier:actionName title:actionName options:0];
            [actions addObject:action];
        }
        
        {
            NSString* actionName = @"action2";
            UNNotificationAction* action = [UNNotificationAction actionWithIdentifier:actionName title:actionName options:UNNotificationActionOptionAuthenticationRequired];
            [actions addObject:action];
        }
        
        {
            NSString* actionName = @"action3";
            UNNotificationAction* action = [UNNotificationAction actionWithIdentifier:actionName title:actionName options:UNNotificationActionOptionForeground];
            [actions addObject:action];
        }
        
        NSString* categoryName = @"categoryName1";
        UNNotificationCategory* category = [UNNotificationCategory categoryWithIdentifier:categoryName actions:actions intentIdentifiers:@[] options:UNNotificationCategoryOptionNone];
        [mset addObject:category];
    }
    
    // custom
    {
        NSMutableArray<UNNotificationAction*>* actions = [NSMutableArray array];
        
        {
            NSString* actionName = @"action1";
            UNNotificationAction* action = [UNNotificationAction actionWithIdentifier:actionName title:actionName options:0];
            [actions addObject:action];
        }
        
        {
            NSString* actionName = @"action2";
            UNNotificationAction* action = [UNNotificationAction actionWithIdentifier:actionName title:actionName options:UNNotificationActionOptionAuthenticationRequired];
            [actions addObject:action];
        }
        
        {
            NSString* actionName = @"action3";
            UNNotificationAction* action = [UNNotificationAction actionWithIdentifier:actionName title:actionName options:UNNotificationActionOptionForeground];
            [actions addObject:action];
        }
        
        NSString* categoryName = @"abcd";
        UNNotificationCategory* category = [UNNotificationCategory categoryWithIdentifier:categoryName actions:actions intentIdentifiers:@[] options:UNNotificationCategoryOptionNone];
        [mset addObject:category];
    }
    
    [self.notificationCenter setNotificationCategories:mset];
}

#pragma mark -- test
- (void)test {

    UNMutableNotificationContent *content = [UNMutableNotificationContent new];
    content.body = @"this is a notification body!";
    content.sound = [UNNotificationSound defaultSound];
    //content.categoryIdentifier = @"categoryName1";
    content.categoryIdentifier = @"abcd";
    
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"123" content:content trigger:[UNTimeIntervalNotificationTrigger triggerWithTimeInterval:5 repeats:NO]];
    [self.notificationCenter addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        NSLog(@"%s", __FUNCTION__);
    }];

#if 0
    UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc]init];
    content.title = @"多媒体通知";
    content.body = @"显示多张图片";
    
    content.userInfo = @{@"items":@[@{@"title":@"奥迪1",@"text":@"奥迪R8",@"imageUrl":@"http://172.20.90.117/www2/img/r8.jpg"},
                                    @{@"title":@"奥迪2",@"text":@"奥迪超跑",@"imageUrl":@"http://172.20.90.117/www2/img/r8-1.jpg"}]};
    
    content.categoryIdentifier = @"abcd";
    
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:5 repeats:NO];
    NSString *indentifier = @"abcd";
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:indentifier content:content trigger:trigger];
    [[UNUserNotificationCenter currentNotificationCenter] addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        //
    }];
#endif
}

- (NSString*)get_string {
    return @"hello notify";
}

@end
