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

@interface SectionData : NSObject
@property (nonatomic, assign) NSInteger section;
@property (nullable, nonatomic, strong) id userData;

+ (instancetype)sectionDataWith:(NSInteger)section userData:(id _Nullable)userData;
@end

@interface TableSectionModel : NSObject
- (NSString*)title;
- (NSString*)detail;
- (void)bind;

- (void)tableView:(UITableView *)tableView didSelectSection:(NSInteger)section withData:(id _Nullable)userData;

// init
@property (nonatomic, weak) UIViewController* controller;
@property (nullable, nonatomic, copy) NSString* viewName;
@property (nonatomic, assign) float height;
@property (nullable, nonatomic, strong) NSMutableArray<TableCellModel*>* cells;

- (NSInteger)numberOfRows;

+ (instancetype)modelWithController:(UIViewController*)controller;
+ (instancetype)modelWithController:(UIViewController*)controller viewName:(NSString* _Nullable)viewName height:(float)height;

@end

NS_ASSUME_NONNULL_END
