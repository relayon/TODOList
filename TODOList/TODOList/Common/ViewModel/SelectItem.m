//
//  SelectItem.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SelectItem.h"

@implementation SelectItem

- (NSString*)titleForSelect {
    return self.title;
}

- (id)valueForItem {
    return @(self.value);
}

+ (instancetype)itemWithTitle:(NSString*)title value:(NSInteger)value {
    SelectItem* item = [[[self class] alloc] init];
    item.title = title;
    item.value = value;
    
    return item;
}

@end
