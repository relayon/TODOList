//
//  VMTableDataDelegate.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "VMTableDataDelegate.h"
#import "TableSectionViewModelProtocol.h"
#import "TableViewSectionProtocol.h"
#import "TableViewCellProtocol.h"

@implementation VMTableDataDelegate

/**
 保存数据到数据模型
 */
- (void)saveToDataModel {
    [self.dataList makeObjectsPerformSelector:@selector(saveToDataModel)];
    for (id<TableSectionViewModelProtocol> section in self.dataList) {
        [section.cells makeObjectsPerformSelector:@selector(saveToDataModel)];
    }
}

/**
 创建委托
 
 @param data 数据源
 @return 委托
 */
+ (instancetype)delegateWithData:(NSArray*)data {
    return [self delegateWithData:data sectionType:TableSectionType_Single];
}

/**
 创建委托
 
 @param data 数据源
 @param sectionType 数据类型
 @return 委托
 */
+ (instancetype)delegateWithData:(NSArray*)data sectionType:(TableSectionType)sectionType {
    VMTableDataDelegate* delegate = [[[self class] alloc] init];
    delegate.dataList = data;
    delegate.sectionType = sectionType;
    return delegate;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[indexPath.section];
    id<TableCellViewModelProtocol> cellModel = sectionModel.cells[indexPath.row];
    [cellModel tableView:tableView didSelectRowAtIndexPath:indexPath];
}

#pragma mark -- table section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[section];
    return sectionModel.viewHeight;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[section];
    NSString* viewName = sectionModel.viewClassName;
    if (viewName) {
        UIView<TableViewSectionProtocol>* view = [[[NSBundle mainBundle] loadNibNamed:viewName owner:nil options:nil] firstObject];
        [view updateWithViewModel:sectionModel withTableView:tableView forSection:section];
        return view;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[indexPath.section];
    id<TableCellViewModelProtocol> cellModel = sectionModel.cells[indexPath.row];
    return cellModel.viewHeight;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[section];
    return sectionModel.cells.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[indexPath.section];
    id<TableCellViewModelProtocol> cellModel = sectionModel.cells[indexPath.row];
    
    UITableViewCell<TableViewCellProtocol>* cell = [tableView dequeueReusableCellWithIdentifier:cellModel.viewClassName forIndexPath:indexPath];
    [cell updateWithViewModel:cellModel withTableView:tableView forIndexPath:indexPath];
    
    return cell;
}

@end
