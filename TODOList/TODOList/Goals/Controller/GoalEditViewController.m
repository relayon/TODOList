//
//  GoalEditViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalEditViewController.h"

#import "UITextViewCell.h"
#import "UISwitchViewSection.h"
#import "TableDataDelegate.h"
#import "GoalContentVM.h"

#import "SelectDateVM.h"
#import "TitleDetailTableViewCell.h"

@interface GoalEditViewController (){
    TableDataDelegate* _tableDelegate;
    
    GoalModel* _goalModel;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)onEditDone:(UIBarButtonItem *)sender;

@end

@implementation GoalEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _goalModel = [[GoalModel alloc] init];
    _goalModel.content = @"haha";
    _goalModel.fireDate = [NSDate date];
    
    [self p_buildData];
    [self p_initTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)p_buildData {
    NSMutableArray<TableSectionModel*>* dataList = [NSMutableArray array];
    
    // 提醒
    TableSectionModel* tipSection = [TableSectionModel modelWithViewName:@"UISwitchViewSection" height:44];
    
    NSString* selectDateCellName = NSStringFromClass([TitleDetailTableViewCell class]);
    SelectDateVM* selectDateVM = [SelectDateVM modelWithController:self cellName:selectDateCellName height:44];
    [selectDateVM updateWithGoalModel:_goalModel];
    [tipSection.cells addObject:selectDateVM];
    
    [dataList addObject:tipSection];
    
    // 输入
    TableSectionModel* contentSection = [TableSectionModel model];
    
    NSString* contentCellName = NSStringFromClass([UITextViewCell class]);
    GoalContentVM* contentVM = [GoalContentVM modelWithController:self cellName:contentCellName height:250];
    contentVM.limitLen = 10;
    [contentVM updateWithGoalModel:_goalModel];
    [contentSection.cells addObject:contentVM];
    [dataList addObject:contentSection];
    
    _tableDelegate = [TableDataDelegate delegateWithData:dataList];
    self.tableView.dataSource = _tableDelegate;
    self.tableView.delegate = _tableDelegate;
}

#pragma mark -- tableview
- (void)p_initTableView {
    NSString* selectDateCellName = NSStringFromClass([TitleDetailTableViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:selectDateCellName bundle:nil] forCellReuseIdentifier:selectDateCellName];
    
    NSString* cellName = NSStringFromClass([UITextViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
    self.tableView.tableFooterView = [UIView new];
}

- (IBAction)onEditDone:(UIBarButtonItem *)sender {
    [_tableDelegate bind];
    
    NSLog(@"%s", __FUNCTION__);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
