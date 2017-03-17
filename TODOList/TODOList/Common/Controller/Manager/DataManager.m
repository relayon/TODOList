//
//  DataManager.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/17.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "DataManager.h"

@interface DataManager () {
    LKDBHelper* _dbHelper;
}

@end

@implementation DataManager
// 单例实现
SINGLETON_IMP;

- (LKDBHelper*)getCurrentLKDBHelper {
    if (_dbHelper == nil) {
        NSString* filePath = [LKDBUtils getPathForDocuments:@"goals.db" inDir:@"data"];
        _dbHelper = [[LKDBHelper alloc] initWithDBPath:filePath];
    }
    
    return _dbHelper;
}

@end
