//
//  SimpleTableDataModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleTableDataModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleTableDataModel : NSObject <SimpleTableDataModelProtocol>

@property (nonatomic, copy) NSString* simpleId;
@property (nonatomic, copy) NSString* simpleContent;
@property (nonatomic, assign) NSInteger simpleValue;


@end

NS_ASSUME_NONNULL_END
