//
//  TableSectionModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableSectionModel : NSObject
- (NSString*)title;
- (NSString*)detail;
- (void)bind;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

// init
@property (nullable, nonatomic, copy) NSString* viewName;
@property (nonatomic, assign) float height;
@property (nullable, nonatomic, strong) NSMutableArray<TableCellModel*>* cells;

+ (instancetype)model;
+ (instancetype)modelWithViewName:(NSString* _Nullable)viewName height:(float)height;

@end

NS_ASSUME_NONNULL_END
