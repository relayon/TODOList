//
//  SelectDateVM.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableCellModel.h"
#import "GoalModel.h"

@interface SelectDateVM : TableCellModel

- (void)updateWithGoalModel:(GoalModel*)goalModel;

@end
