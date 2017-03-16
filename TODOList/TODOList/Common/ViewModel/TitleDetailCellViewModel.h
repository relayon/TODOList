//
//  TitleDetailCellViewModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableCellViewModel.h"
#import "TitleDetailViewProtocol.h"

@interface TitleDetailCellViewModel : BaseTableCellViewModel <TitleDetailViewProtocol>

/**
 创建模型

 @param aTitle 标题
 @param aDetail 详情
 @return 模型
 */
+ (instancetype)modelWithTitle:(NSString*)aTitle detail:(NSString*)aDetail;

@end
