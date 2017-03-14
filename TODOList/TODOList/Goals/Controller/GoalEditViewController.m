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

@interface GoalEditViewController (){
//    NSMutableArray<TableSectionModel*>* _dataList;
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
    NSString* cellName = NSStringFromClass([UITextViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
    self.tableView.tableFooterView = [UIView new];
}

//- (void)p_configCell:(UITableViewCell*)cell forIndex:(NSIndexPath*)indexPath {
//    
//}
//
//#pragma mark - UITableViewDataSource & UITableViewDelegate
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 0;
//}
//
//- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString* cellName = NSStringFromClass([UITextViewCell class]);
//    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellName forIndexPath:indexPath];
//    
//    [self p_configCell:cell forIndex:indexPath];
//    
//    return cell;
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onEditDone:(UIBarButtonItem *)sender {
    [_tableDelegate bind];
    
    NSLog(@"%s", __FUNCTION__);
    [self.navigationController popViewControllerAnimated:YES];
}
@end
