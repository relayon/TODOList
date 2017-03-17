//
//  GoalContentVM.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableCellViewModel.h"

@interface GoalContentVM : BaseTableCellViewModel

@property (nonatomic, copy) NSString* placeHolder;
@property (nonatomic, copy) NSString* content;
/**
 *  输入文本字数限制
 */
@property (assign, nonatomic) NSInteger limitLen;

// init
@property (nonatomic, assign) BOOL isFirstResponder;

@end
