//
//  DataManager.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/17.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LKDBHelper.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject
// 单例声明
SINGLETON_DCL;

- (LKDBHelper*)getCurrentLKDBHelper;

@end

NS_ASSUME_NONNULL_END
