//
//  SimpleTableDataModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableDataModel.h"

@implementation SimpleTableDataModel

#pragma mark -- SimpleTableDataModelProtocol
/**
 标题
 
 @return 标题
 */
- (NSString*)smc_title {
    return self.simpleContent;
}

@end
