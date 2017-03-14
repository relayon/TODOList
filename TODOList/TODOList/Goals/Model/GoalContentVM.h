//
//  GoalContentVM.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableCellModel.h"
#import "GoalModel.h"

@interface GoalContentVM : TableCellModel

@property (nonatomic, copy) NSString* placeHolder;
@property (nonatomic, copy) NSString* content;
/**
 *  输入文本字数限制
 */
@property (assign, nonatomic) NSInteger limitLen;

- (void)updateWithGoalModel:(GoalModel*)goalModel;

@end
