//
//  GoalEditViewController.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoalModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^OnEditGoalModel)(GoalModel* model);

@interface GoalEditViewController : UIViewController

@property (nonatomic, strong) GoalModel* goalModel;
@property (nullable, nonatomic, copy) OnEditGoalModel onEditGoalModel;

@end

NS_ASSUME_NONNULL_END
