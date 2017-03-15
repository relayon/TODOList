//
//  UITextViewCell.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableBaseCellViewProtocol.h"
#import "UIPlaceHolderTextView.h"

@interface UITextViewCell : UITableViewCell <UITextViewDelegate, TableBaseCellViewProtocol>
@property (weak, nonatomic) IBOutlet UIPlaceHolderTextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *labelStatus;

@end
