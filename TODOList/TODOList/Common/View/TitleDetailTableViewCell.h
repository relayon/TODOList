//
//  TitleDetailTableViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "TitleDetailViewProtocol.h"

@interface TitleDetailTableViewCell : BaseTableViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelDetail;

/**
 设置标题和详情

 @param title 标题
 @param detail 详情
 */
- (void)setTitle:(NSString*)title detail:(NSString*)detail;


/**
 更新数据

 @param viewModel 模型
 */
- (void)updateWithViewModel:(id<TitleDetailViewProtocol>)viewModel;

@end
