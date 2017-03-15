//
//  SimpleTableCellViewModel.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableCellViewModel.h"
#import "SimpleTableDataModelProtocol.h"

@interface SimpleTableBaseViewModel ()
@property (nonatomic, weak) id<SimpleTableDataModelProtocol> dataModel;

@end

@implementation SimpleTableCellViewModel

/**
 TableCell被选中的回调
 
 @param tableView Table
 @param indexPath index
 */
- (void)smc_tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
