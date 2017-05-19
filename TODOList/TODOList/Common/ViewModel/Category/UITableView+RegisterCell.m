//
//  UITableView+RegisterCell.m
//  TODOList
//
//  Created by SMC-MAC on 2017/5/19.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "UITableView+RegisterCell.h"

@implementation UITableView (RegisterCell)

- (void)registerCell:(NSSet<NSString*>*)cellNames {
    // register cells
    for (NSString* name in cellNames) {
        [self registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:name];
    }
}

@end
