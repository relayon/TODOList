//
//  TableViewSectionProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableViewSectionProtocol_h
#define TableViewSectionProtocol_h

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol TableViewSectionProtocol <NSObject>

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

#endif /* TableViewSectionProtocol_h */
