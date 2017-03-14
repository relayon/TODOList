//
//  TableSectionModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableSectionModel.h"

@implementation TableSectionModel

- (NSString*)title {
    return @"";
}

- (NSString*)detail {
    return @"";
}

- (void)bind {
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"should be override");
}

#pragma mark -- init
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cells = [NSMutableArray array];
    }
    return self;
}

+ (instancetype)model {
    return [self modelWithViewName:nil height:0];
}

+ (instancetype)modelWithViewName:(NSString* _Nullable)viewName height:(float)height {
    TableSectionModel* model = [[[self class] alloc] init];
    model.viewName = viewName;
    model.height = height;
    
    return model;
}

@end
