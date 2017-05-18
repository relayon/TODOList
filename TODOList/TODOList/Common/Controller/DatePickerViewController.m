//
//  DatePickerViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()
- (IBAction)onValueChanged:(UIDatePicker *)sender;

@property (nonatomic, strong) NSDate* selDate;
@property (nonatomic, strong) NSDate* minDate;
@property (nonatomic, strong) NSDate* maxDate;

@end

@implementation DatePickerViewController

- (void)setSelectedDate:(NSDate*)selectedDate {
    [self setSelectedDate:selectedDate minDate:nil maxDate:nil];
}

- (void)setSelectedDate:(NSDate*)selectedDate minDate:(NSDate* _Nullable)minDate maxDate:(NSDate* _Nullable)maxDate {
    self.selDate   = selectedDate;
    self.minDate   = minDate;
    self.maxDate   = maxDate;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.selDate) {
        self.datePicker.date = self.selDate;
    } 
    self.datePicker.minimumDate = self.minDate;
    self.datePicker.maximumDate = self.maxDate;
    
    self.datePicker.datePickerMode = self.pickerMode;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onValueChanged:(UIDatePicker *)sender {
    if (self.onSelectDate) {
        self.onSelectDate(sender.date);
    }
}
@end
