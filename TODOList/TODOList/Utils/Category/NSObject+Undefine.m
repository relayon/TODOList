//
//  NSObject+Undefine.m
//  HYSmileiOS
//
//  Created by SMC-MAC on 16/6/1.
//  Copyright © 2016年 heyou. All rights reserved.
//

#import "NSObject+Undefine.h"

@implementation NSObject (Undefine)

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NSLog(@"HY==>: setValue 未定义的key : %@", key);
}

- (id)valueForUndefinedKey:(NSString *)key {
    NSLog(@"HY==>: valueForUndefinedKey 未定义的key : %@", key);
    return nil;
}

@end
