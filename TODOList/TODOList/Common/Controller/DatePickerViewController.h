//
//  DatePickerViewController.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^OnSelectDate)(NSDate* date);

@interface DatePickerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@property (nonatomic, assign) UIDatePickerMode pickerMode;

- (void)setSelectedDate:(NSDate*)selectedDate;
- (void)setSelectedDate:(NSDate*)selectedDate minDate:(NSDate* _Nullable)minDate maxDate:(NSDate* _Nullable)maxDate;

@property (nonatomic, copy)OnSelectDate onSelectDate;

@end
NS_ASSUME_NONNULL_END
