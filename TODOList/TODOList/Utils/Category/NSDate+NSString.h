//
//  NSDate+NSString.h
//  HYSmileiOS
//
//  Created by SMC-MAC on 16/8/3.
//  Copyright © 2016年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NSString)

/**
 *  获取默认的时间格式 如: 2015-12-24 10:57:33
 *
 *  @return date formatter
 */
+ (NSDateFormatter*)smc_defaultDateTimeFormatter;

/**
 *  返回字符串显示 如 “2015-12-24 11:08:09"
 *
 *  @return 日期字符串
 */
- (NSString*)smc_string;

/**
 *  根据时间返回字符串，如：“2015-12-24 11:08:09"
 *
 *  @param interval 时间
 *
 *  @return 字符串
 */
+ (NSString*)smc_stringFromInterval:(NSTimeInterval)interval;

- (NSString*)debugDescription;
- (NSString*)description;

@end
