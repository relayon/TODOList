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

#import "TitleDetailTableViewCell.h"
#import "GoalTipVM.h"

@interface GoalEditViewController (){
    TableDataDelegate* _tableDelegate;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)onEditDone:(UIBarButtonItem *)sender;

@end

@implementation GoalEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self p_buildData];
    [self p_initTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)p_buildData {
    NSMutableArray<TableSectionModel*>* dataList = [NSMutableArray array];
    
    // 输入
    TableSectionModel* contentSection = [TableSectionModel modelWithController:self];
    
    NSString* contentCellName = NSStringFromClass([UITextViewCell class]);
    GoalContentVM* contentVM = [GoalContentVM modelWithController:self cellName:contentCellName height:250];
    contentVM.limitLen = 10;
    [contentVM updateWithGoalModel:self.goalModel];
    [contentSection.cells addObject:contentVM];
    
    [dataList addObject:contentSection];
    
    // 提醒
    NSString* viewName = NSStringFromClass([UISwitchViewSection class]);
    GoalTipVM* tipSection = [GoalTipVM modelWithController:self viewName:viewName height:44];
    [tipSection updateWithGoalModel:self.goalModel];
    [dataList addObject:tipSection];
    
    // 委托
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
    if (self.onEditGoalModel) {
        [_tableDelegate bind];
        self.onEditGoalModel(self.goalModel);
    }
    
    NSLog(@"%s", __FUNCTION__);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
