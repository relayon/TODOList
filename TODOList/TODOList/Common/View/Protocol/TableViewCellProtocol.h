//
//  TableViewCellProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TableViewCellProtocol_h
#define TableViewCellProtocol_h

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TableViewCellProtocol <NSObject>

@required

/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 @param tableView table
 @param indexPath indexPath
 */
- (void)updateWithViewModel:(id)viewModel withTableView:(UITableView*)tableView forIndexPath:(NSIndexPath*)indexPath;

@end

NS_ASSUME_NONNULL_END

#endif /* TableViewCellProtocol_h */
