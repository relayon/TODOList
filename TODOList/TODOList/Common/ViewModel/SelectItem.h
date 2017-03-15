//
//  SelectItem.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectableDelegate.h"

@interface SelectItem : NSObject <SelectableDelegate>

@property (nonatomic, copy) NSString* title;
@property (nonatomic, assign) NSInteger value;

+ (instancetype)itemWithTitle:(NSString*)title value:(NSInteger)value;

@end
