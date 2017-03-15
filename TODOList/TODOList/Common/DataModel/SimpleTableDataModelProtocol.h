//
//  SimpleTableDataModelProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef SimpleTableDataModelProtocol_h
#define SimpleTableDataModelProtocol_h

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SimpleTableDataModelProtocol <NSObject>

@required
/**
 标题

 @return 标题
 */
- (NSString*)smc_title;
@optional

/**
 详情

 @return 详情
 */
- (NSString*)smc_detail;

@end

NS_ASSUME_NONNULL_END

#endif /* SimpleTableDataModelProtocol_h */
