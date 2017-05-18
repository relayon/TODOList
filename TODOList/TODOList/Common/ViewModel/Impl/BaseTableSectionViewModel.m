//
//  BaseTableSectionViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableSectionViewModel.h"

@interface BaseTableSectionViewModel () {
    
}

@end

@implementation BaseTableSectionViewModel

@synthesize cells;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cells = [NSMutableArray array];
    }
    return self;
}



@end
