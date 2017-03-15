//
//  SimpleTableDataDelegateImpl.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableDataDelegateImpl.h"
#import "TableBaseSectionViewProtocol.h"
#import "TableBaseCellViewProtocol.h"

@implementation SimpleTableDataDelegateImpl

/**
 保存数据到数据模型
 */
- (void)smc_saveToDataModel {
    
}

/**
 创建委托
 
 @param data 数据源
 @return 委托
 */
+ (instancetype)delegateWithData:(NSArray<id<TableSectionViewModelProtocol>>*)data {
    SimpleTableDataDelegateImpl* delegate = [[[self class] alloc] init];
    delegate.dataList = data;
    return delegate;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[indexPath.section];
    id<TableCellViewModelProtocol> cellModel = sectionModel.cells[indexPath.row];
    [cellModel smc_tableView:tableView didSelectRowAtIndexPath:indexPath];
}

#pragma mark -- table section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[section];
    return [sectionModel smc_viewHeight];
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[section];
    NSString* viewName = [sectionModel smc_viewClassName];
    if (viewName) {
        UIView<TableBaseSectionViewProtocol>* view = [[[NSBundle mainBundle] loadNibNamed:viewName owner:nil options:nil] firstObject];
        [view updateWithViewModel:sectionModel withTableView:tableView forSection:section];
        return view;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<TableSectionViewModelProtocol> sectionModel = self.dataList[indexPath.section];
    id<TableCellViewModelProtocol> cellModel = sectionModel.cells[indexPath.row];
    return [cellModel smc_viewHeight];
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
    
    UITableViewCell<TableBaseCellViewProtocol>* cell = [tableView dequeueReusableCellWithIdentifier:[cellModel smc_viewClassName] forIndexPath:indexPath];
    [cell updateWithViewModel:cellModel withTableView:tableView forIndexPath:indexPath];
    
    return cell;
}

@end
