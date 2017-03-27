//
//  NotificationConfig.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/27.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NotificationConfig : NSObject

@property (nonatomic, copy) NSString* notifyId;
@property (nonatomic, copy) NSString* notifyBody;
@property (nonatomic, copy) NSString* soundName;
@property (nonatomic, copy) NSString* categoryId;
@property (nonatomic, assign) NSInteger delaySeconds;

@end
