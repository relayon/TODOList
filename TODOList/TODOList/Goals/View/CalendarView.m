//
//  CalendarView.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "CalendarView.h"

#import "FSCalendar.h"

#define kContainerFrame (CGRectMake(0, CGRectGetMaxY(calendar.frame), CGRectGetWidth(self.view.frame), 50))

@interface CalendarView () <FSCalendarDataSource,FSCalendarDelegate>
@property (weak, nonatomic) IBOutlet FSCalendar *calendar;

@property (strong, nonatomic) NSDateFormatter *dateFormatter;

@end

@implementation CalendarView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.dateFormatter = [[NSDateFormatter alloc] init];
        self.dateFormatter.dateFormat = @"yyyy-MM-dd";
        
        // background view
        UIView* bkview = [[UIView alloc] initWithFrame:frame];
        bkview.backgroundColor = [UIColor lightGrayColor];
        bkview.alpha = 0.3f;
        [self addSubview:bkview];
        
        // 450 for iPad and 300 for iPhone
        CGFloat height = [[UIDevice currentDevice].model hasPrefix:@"iPad"] ? 450 : 300;
        FSCalendar *calendar = [[FSCalendar alloc] initWithFrame:CGRectMake(0, 64, frame.size.width, height)];
        calendar.dataSource = self;
        calendar.delegate = self;
        calendar.backgroundColor = [UIColor whiteColor];
        calendar.appearance.headerMinimumDissolvedAlpha = 0;
        calendar.firstWeekday = 2;
        calendar.placeholderType = FSCalendarPlaceholderTypeFillHeadTail;
        calendar.appearance.caseOptions = FSCalendarCaseOptionsHeaderUsesUpperCase;
        [self addSubview:calendar];
        self.calendar = calendar;
    }
    return self;
}

- (void)setVisible:(BOOL)visible {
    if (visible) {
        // 显示
        self.hidden = NO;
    } else {
        // 隐藏
        self.hidden = YES;
    }
}

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    
//    self.dateFormatter = [[NSDateFormatter alloc] init];
//    self.dateFormatter.dateFormat = @"yyyy-MM-dd";
//}

- (NSDate *)minimumDateForCalendar:(FSCalendar *)calendar
{
    return [self.dateFormatter dateFromString:@"2017-01-08"];
}

- (NSDate *)maximumDateForCalendar:(FSCalendar *)calendar
{
    return [self.dateFormatter dateFromString:@"2020-10-08"];
}

- (void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}

#pragma mark - <FSCalendarDelegate>

- (void)calendar:(FSCalendar *)calendar boundingRectWillChange:(CGRect)bounds animated:(BOOL)animated
{
    calendar.frame = (CGRect){calendar.frame.origin,bounds.size};
//    self.bottomContainer.frame = kContainerFrame;
}

#pragma mark - Target action

- (void)nextClicked:(id)sender
{
//    NSDate *nextMonth = [self.gregorian dateByAddingUnit:NSCalendarUnitMonth value:1 toDate:self.calendar.currentPage options:0];
//    [self.calendar setCurrentPage:nextMonth animated:YES];
}

- (void)prevClicked:(id)sender
{
//    NSDate *prevMonth = [self.gregorian dateByAddingUnit:NSCalendarUnitMonth value:-1 toDate:self.calendar.currentPage options:0];
//    [self.calendar setCurrentPage:prevMonth animated:YES];
}

@end
