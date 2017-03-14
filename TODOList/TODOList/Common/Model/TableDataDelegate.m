//
//  TableDataDelegate.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableDataDelegate.h"

@implementation TableDataDelegate

/**
 绑定数据
 */
- (void)bind {
    [self.dataList makeObjectsPerformSelector:@selector(bind)];
    for (TableSectionModel* sectionModel in self.dataList) {
        [sectionModel.cells makeObjectsPerformSelector:@selector(bind)];
    }
}

#pragma mark -- select
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    TableSectionModel* sectionModel = self.dataList[indexPath.section];
    TableCellModel* cellModel = sectionModel.cells[indexPath.row];
    [cellModel tableView:tableView didSelectRowAtIndexPath:indexPath];
}

#pragma mark -- table section
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    TableSectionModel* sectionModel = self.dataList[section];
    return sectionModel.height;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TableSectionModel* sectionModel = self.dataList[section];
    NSString* viewName = sectionModel.viewName;
    if (viewName) {
        UIView* view = [[[NSBundle mainBundle] loadNibNamed:viewName owner:nil options:nil] firstObject];
        
        return view;
    }
    
    return nil;
}

#pragma mark -- ConfigCell
- (void)configCell:(BaseTableViewCell*)cell forIndex:(NSIndexPath*)indexPath {
//    NSLog(@"should be override");
    TableSectionModel* sectionModel = self.dataList[indexPath.section];
    TableCellModel* cellModel = sectionModel.cells[indexPath.row];
    [cell updateViewWithModel:cellModel];
//    cell.textLabel.text = cellModel.title;
//    cell.detailTextLabel.text = cellModel.detail;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableSectionModel* sectionModel = self.dataList[indexPath.section];
    TableCellModel* cellModel = sectionModel.cells[indexPath.row];
    return cellModel.height;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    TableSectionModel* sectionModel = self.dataList[section];
    return sectionModel.cells.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableSectionModel* sectionModel = self.dataList[indexPath.section];
    TableCellModel* cellModel = sectionModel.cells[indexPath.row];
    
    BaseTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellModel.cellName forIndexPath:indexPath];
    
    [self configCell:cell forIndex:indexPath];
    
    return cell;
}

#pragma mark -- init
+ (instancetype)delegateWithData:(NSArray<TableSectionModel*>*)data {
    TableDataDelegate* delegate = [[TableDataDelegate alloc] init];
    delegate.dataList = data;
    return delegate;
}

@end
