//
//  NSString+Extension.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)


/**
 获得当前字符串的MD5散列字符串

 @return MD5
 */
- (NSString *)smc_MD5;

+ (NSString *)smc_UUID;

@end
