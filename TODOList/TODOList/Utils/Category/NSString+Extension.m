//
//  NSString+Extension.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "NSString+Extension.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Extension)

/**
 获得当前字符串的MD5散列字符串
 
 @return MD5
 */
- (NSString *)smc_MD5 {
    const char *cStr = [self UTF8String];
    
    unsigned char result[16];
    NSNumber *num = [NSNumber numberWithUnsignedLong:strlen(cStr)];
    CC_MD5( cStr,[num intValue], result );
    
    return [[NSString stringWithFormat:
             @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] uppercaseString];
}

+ (NSString *)smc_UUID {
    NSString *str = [NSString stringWithFormat:@"UUID_%@", [NSDate date]];
    NSString *uuid = [str smc_MD5];
    return uuid;
}

@end
