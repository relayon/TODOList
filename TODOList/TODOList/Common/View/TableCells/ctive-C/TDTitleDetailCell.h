//
//  TDTitleDetailCell.h
//  TODOList
//
//  Created by SMC-MAC on 2017/5/18.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDTitleDetailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelDetail;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewIndicator;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *layoutDetailTrailing;

@end
