//
//  BaseTableViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 */
- (void)updateWithViewModel:(id)viewModel;

@end
