//
//  VMTableDataDelegate.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "VMTableDataDelegate.h"
// cell高度自适应
#import "UITableView+FDTemplateLayoutCell.h"

@interface VMTableDataDelegate ()

@property (nonatomic, weak) NSArray<id<TableSectionViewModelProtocol>>* dataList;

@end

@implementation VMTableDataDelegate

+ (instancetype)delegateWithData:(NSArray<id<TableSectionViewModelProtocol>>*)dataList {
    VMTableDataDelegate* delegate = [[[self class] alloc] init];
    delegate.dataList = dataList;
    return delegate;
}

#pragma mark -- get section & cell
- (id<TableSectionViewModelProtocol>)p_sectionModelAtIndex:(NSInteger)index {
    id<TableSectionViewModelProtocol> sm = self.dataList[index];
    return sm;
}

- (id<TableCellViewModelProtocol>)p_cellModelAtIndexPath:(NSIndexPath*)indexPath {
    id<TableSectionViewModelProtocol> sm = [self p_sectionModelAtIndex:indexPath.section];
    id<TableCellViewModelProtocol> cm = sm.cells[indexPath.row];
    return cm;
}

#pragma mark -- UITableViewDataSource && UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = [self p_sectionModelAtIndex:section];
    if ([sectionModel viewClassName]) {
        return sectionModel.customViewHeight;
    } else {
        return CGFLOAT_MIN;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return CGFLOAT_MIN;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<TableCellViewModelProtocol> cellModel = [self p_cellModelAtIndexPath:indexPath];
    CGFloat height = 0.0f;
    
    if ([cellModel isAutoHeight]) {
        height = [tableView fd_heightForCellWithIdentifier:[cellModel viewClassName] cacheByIndexPath:indexPath configuration:^(UITableViewCell* cell) {
            [cellModel updateView:cell];
        }];
    } else {
        height = [cellModel customViewHeight];
    }
    
    return height;
}

- (UIView*)tableView:(UITableView*)tableView viewForHeaderInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = [self p_sectionModelAtIndex:section];
    
    UIView* sectionView = nil;
    if ([sectionModel viewClassName]) {
        sectionView = [[[NSBundle mainBundle] loadNibNamed:[sectionModel viewClassName] owner:nil options:nil] firstObject];
        [sectionModel updateView:sectionView];
    }
    
    return sectionView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSInteger nc = self.dataList.count;
    
    return nc;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    id<TableSectionViewModelProtocol> sectionModel = [self p_sectionModelAtIndex:section];
    
    return sectionModel.cells.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<TableCellViewModelProtocol> cellModel = [self p_cellModelAtIndexPath:indexPath];
    UITableViewCell* tCell = [tableView dequeueReusableCellWithIdentifier:[cellModel viewClassName] forIndexPath:indexPath];
    [cellModel updateView:tCell];
    return tCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    id<TableCellViewModelProtocol> cellModel = [self p_cellModelAtIndexPath:indexPath];
    [cellModel tableView:tableView didSelectRowAtIndexPath:indexPath];
}

@end
