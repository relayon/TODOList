//
//  NSDate+NSString.m
//  HYSmileiOS
//
//  Created by SMC-MAC on 16/8/3.
//  Copyright © 2016年 heyou. All rights reserved.
//

#import "NSDate+NSString.h"

@implementation NSDate (NSString)

/**
 *  获取默认的时间格式 如: 2015-12-24 10:57:33
 *
 *  @return
 */
+ (NSDateFormatter*)smc_defaultDateTimeFormatter {
    static NSDateFormatter *formatter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    });
    return formatter;
}

/**
 *  返回字符串显示 如 “2015-12-24 11:08:09"
 *
 *  @return
 */
- (NSString*)smc_string {
    return [[[self class] smc_defaultDateTimeFormatter] stringFromDate:self];
}

/**
 *  根据时间返回字符串，如：“2015-12-24 11:08:09"
 *
 *  @param interval 时间
 *
 *  @return 字符串
 */
+ (NSString*)smc_stringFromInterval:(NSTimeInterval)interval {
    NSDate* tDate = [NSDate dateWithTimeIntervalSince1970:interval];
    return [tDate smc_string];
}

- (NSString *)debugDescription {
    NSString* dstr = [self smc_string];
    return dstr;
}

- (NSString*)description {
    return @"NSDate desc";
}

@end
