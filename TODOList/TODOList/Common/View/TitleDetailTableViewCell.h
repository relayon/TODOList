//
//  TitleDetailTableViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "SimpleTableCellView.h"

@interface TitleDetailTableViewCell : SimpleTableCellView
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelDetail;

@end
