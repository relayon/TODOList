//
//  TableCellModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableCellModel.h"

#define C_CELL_HEIGHT   44.0f

@interface TableCellModel ()

@end

@implementation TableCellModel

- (NSString*)title {
    return @"";
}

- (NSString*)detail {
    return @"";
}

- (void)bind {
    NSLog(@"should be orride");
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"should be override");
}

+ (instancetype)modelWithController:(UIViewController*)controller cellName:(NSString*)cellName {
    return [self modelWithController:controller cellName:cellName height:C_CELL_HEIGHT];
}

+ (instancetype)modelWithController:(UIViewController*)controller cellName:(NSString*)cellName height:(float)height {
    TableCellModel* model = [[[self class] alloc] init];
    model.controller = controller;
    model.cellName = cellName;
    model.height = height;
    
    return model;
}

@end
