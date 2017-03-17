//
//  PModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/17.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "PModel.h"
#import "DataManager.h"

@implementation PModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSAssert(NO, @"未定义的key = %@", key);
}

- (id)valueForUndefinedKey:(NSString *)key {
    NSAssert(NO, @"未定义的key = %@", key);
    return nil;
}

#pragma mark --数据库--
+ (LKDBHelper*)getUsingLKDBHelper {
    return [[DataManager sharedInstance] getCurrentLKDBHelper];
}

@end
