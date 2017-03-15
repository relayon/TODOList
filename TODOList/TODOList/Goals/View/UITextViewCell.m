//
//  UITextViewCell.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "UITextViewCell.h"
#import "GoalContentVM.h"

#define STR_STATUS_FORMAT   @"还可以输入%ld字"

@interface UITextViewCell ()

@property (nonatomic, weak) GoalContentVM* viewModel;

@end

@implementation UITextViewCell

/**
 根据ViewModel更新View
 
 @param viewModel ViewModel
 @param tableView table
 @param indexPath indexPath
 */
- (void)updateWithViewModel:(id)viewModel withTableView:(UITableView*)tableView forIndexPath:(NSIndexPath*)indexPath {
    self.viewModel = viewModel;
    
    self.textView.placeholder = self.viewModel.placeHolder;
    self.textView.text = self.viewModel.content;
    
    [self textViewDidChange:self.textView];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.textView.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark -- UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView {
    NSInteger limitLen = self.viewModel.limitLen;
    if (limitLen > 0) {
        NSInteger number = [textView.text length];
        if (number > limitLen) {
            textView.text = [textView.text substringToIndex:limitLen];
            number = limitLen;
        }
        NSInteger left = limitLen - number;
        
        self.labelStatus.text = [NSString stringWithFormat:STR_STATUS_FORMAT, left];
    }
    
    // 绑定Model
    self.viewModel.content = textView.text;
}

@end
