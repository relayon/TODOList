//
//  GoalsViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalsViewController.h"
#import "TextEditViewController.h"
#import "GoalEditViewController.h"
#import "GoalTableViewCell.h"
#import "GoalModel.h"

#import "UIButton+SSEdgeInsets.h"
#import "SettingViewController.h"

#import "GoalBrowseViewController.h"

#import "CalendarView.h"

@interface GoalsViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray<GoalModel*>* _goalsList;
    
    BOOL _isCalenderViewVisible;
}
- (IBAction)onAddClick:(id)sender;
- (IBAction)onSettingClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *buttonTitle;
- (IBAction)onButtonTitleClick:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonSetting;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *buttonAdd;

@property (nonatomic, weak) CalendarView* calendarView;

@end

@implementation GoalsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 目标数据
    [self p_initGoals];
    // 标题按钮
    [self p_setButonTitle];
    // Table
    [self p_initTableView];
    // 日历
    [self p_initCalendarView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)p_initGoals {
    _goalsList = [NSMutableArray array];
}

#pragma mark -- 标题
- (void)p_setButonTitle {
    [self.buttonTitle setImagePositionWithType:SSImagePositionTypeRight spacing:10.0f];
    self.buttonTitle.backgroundColor = [UIColor whiteColor];
    self.buttonTitle.frame = CGRectMake(0, 0, 100, 40);
}

- (void)p_initCalendarView {
    CalendarView* tView = self.calendarView;
    if (tView == nil) {
        tView = [[CalendarView alloc] initWithFrame:self.view.bounds];
        tView.hidden = YES;
        [self.view addSubview:tView];
        self.calendarView = tView;
    }
}

#pragma mark -- tableview
- (void)p_initTableView {
    NSString* cellName = NSStringFromClass([GoalTableViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
    self.tableView.tableFooterView = [UIView new];
    
//    [self.myTableView setEditing:YES animated];
//    self.tableView.editing = YES;
}

- (void)p_configCell:(GoalTableViewCell*)cell forIndex:(NSIndexPath*)indexPath {
    GoalModel* md = [_goalsList objectAtIndex:indexPath.row];
    [cell updateViewWithModel:md];
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _goalsList.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellName = NSStringFromClass([GoalTableViewCell class]);
    GoalTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellName forIndexPath:indexPath];
    
    [self p_configCell:cell forIndex:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    GoalModel* md = [_goalsList objectAtIndex:indexPath.row];
    GoalBrowseViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([GoalBrowseViewController class])];
    vc.goalModel = md;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark -- 编辑任务
//- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
//    return YES;
//}
//
//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
//    [_goalsList exchangeObjectAtIndex:sourceIndexPath.row withObjectAtIndex:destinationIndexPath.row];
//}
//
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return UITableViewCellEditingStyleNone;
//}

- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray* mary = [NSMutableArray array];
    
    UITableViewRowAction* finish = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"完成" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
       NSLog(@"%s", __FUNCTION__);
    }];
    [mary addObject:finish];
    
    UITableViewRowAction* delete = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"%s", __FUNCTION__);
    }];
    [mary addObject:delete];
    
    return mary;
}

#pragma mark -- 其他杂项
- (IBAction)onAddClick:(id)sender {
    GoalEditViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([GoalEditViewController class])];
    GoalModel* md = [[GoalModel alloc] init];
    vc.goalModel = md;
    vc.onEditGoalModel = ^(GoalModel* model) {
        [_goalsList insertObject:model atIndex:0];
        [self.tableView reloadData];
    };
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)onSettingClick:(id)sender {
    SettingViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([SettingViewController class])];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)onButtonTitleClick:(UIButton *)sender {
    _isCalenderViewVisible = !_isCalenderViewVisible;
    [self.calendarView setVisible:_isCalenderViewVisible];
    
    if (_isCalenderViewVisible) {
        self.navigationItem.leftBarButtonItem = nil;
        self.navigationItem.rightBarButtonItem = nil;
    } else {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:self action:@selector(onSettingClick:)];
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(onAddClick:)];
    }
}
@end
