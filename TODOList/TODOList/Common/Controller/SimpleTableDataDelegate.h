//
//  SimpleTableDataDelegate.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TableSectionType) {
    TableSectionType_Single,   // 一组，默认
    TableSectionType_Multiple, // 多组
};

@interface SimpleTableDataDelegate : NSObject <UITableViewDataSource, UITableViewDelegate>

/**
 保存数据到数据模型
 */
- (void)saveToDataModel;

/**
 数据源
 */
@property (nonatomic, strong) NSArray* dataList;
@property (nonatomic, assign) TableSectionType sectionType;

/**
 创建委托
 
 @param data 数据源
 @return 委托
 */
+ (instancetype)delegateWithData:(NSArray*)data;

/**
 创建委托

 @param data 数据源
 @param sectionType 数据类型
 @return 委托
 */
+ (instancetype)delegateWithData:(NSArray*)data sectionType:(TableSectionType)sectionType;

@end

NS_ASSUME_NONNULL_END
