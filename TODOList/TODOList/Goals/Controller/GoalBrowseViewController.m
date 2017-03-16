//
//  GoalBrowseViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalBrowseViewController.h"
#import "UITableView+Extension.h"
#import "TitleDetailTableViewCell.h"
//#import "TitleTableViewCell.h"

@interface GoalBrowseViewController () {
//    TableDataDelegate* _tableDelegate;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation GoalBrowseViewController

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
//    NSMutableArray<TableSectionModel*>* dataList = [NSMutableArray array];
//    
//    // 输入
//    TableSectionModel* contentSection = [TableSectionModel modelWithController:self];
//
//    NSString* contentCellName = NSStringFromClass([TitleTableViewCell class]);
//    TableCellModel* contentVM = [TableCellModel modelWithController:self cellName:contentCellName height:50];
////    [contentVM updateWithGoalModel:self.goalModel];
//    contentVM.title = self.goalModel.content;
//    [contentSection.cells addObject:contentVM];
//    
//    [dataList addObject:contentSection];
////
////    // 提醒
////    NSString* viewName = NSStringFromClass([UISwitchViewSection class]);
////    GoalTipVM* tipSection = [GoalTipVM modelWithController:self viewName:viewName height:44];
////    [tipSection updateWithGoalModel:self.goalModel];
////    [dataList addObject:tipSection];
//    
//    // 委托
//    _tableDelegate = [TableDataDelegate delegateWithData:dataList];
//    self.tableView.dataSource = _tableDelegate;
//    self.tableView.delegate = _tableDelegate;
}

#pragma mark -- tableview
- (void)p_initTableView {
//    [self.tableView registerCell:[TitleTableViewCell class]];
//    [self.tableView registerCell:[TitleDetailTableViewCell class]];
//    self.tableView.tableFooterView = [UIView new];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
