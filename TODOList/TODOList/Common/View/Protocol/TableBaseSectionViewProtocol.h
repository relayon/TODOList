//
//  TableBaseSectionViewProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/15.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableBaseSectionViewProtocol_h
#define TableBaseSectionViewProtocol_h

NS_ASSUME_NONNULL_BEGIN

@protocol TableBaseSectionViewProtocol <NSObject>

@required

/**
 根据ViewModel更新View

 @param viewModel ViewModel
 @param tableView table
 @param section section
 */
- (void)updateWithViewModel:(id)viewModel withTableView:(UITableView*)tableView forSection:(NSInteger)section;

@end

NS_ASSUME_NONNULL_END

#endif /* TableBaseSectionViewProtocol_h */
