//
//  SelectItemViewController.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectableDelegate.h"

typedef void (^OnSelectItem) (id<SelectableDelegate> item);

@interface SelectItemViewController : UITableViewController

@property (nonatomic, strong) NSArray<id<SelectableDelegate>>* dataList;
@property (nonatomic, strong) id<SelectableDelegate> selectedItem;
@property (nonatomic, copy) OnSelectItem onSelectItem;

@end
