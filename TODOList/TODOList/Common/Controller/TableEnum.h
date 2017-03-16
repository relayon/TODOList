//
//  TableEnum.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TableSectionType) {
    TableSectionType_Single,   // 一组，默认
    TableSectionType_Multiple, // 多组
};

@interface TableEnum : NSObject

@end

NS_ASSUME_NONNULL_END
