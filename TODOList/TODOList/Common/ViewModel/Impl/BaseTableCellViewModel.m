//
//  BaseTableCellViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableCellViewModel.h"

@implementation BaseTableCellViewModel

/**
 TableCell被选中的回调
 
 @param tableView Table
 @param indexPath index
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%s", __FUNCTION__);
}

/**
 用户自定义事件：比如，在Cell上添加了一个按钮，开关等
 
 @param tableView Table
 @param indexPath index
 @param userData 自定义数据
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath withData:(id _Nullable)userData {
    NSLog(@"%s", __FUNCTION__);
}

@end
