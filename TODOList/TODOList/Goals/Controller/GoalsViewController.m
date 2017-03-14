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

@interface GoalsViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray<GoalModel*>* _goalsList;
}
- (IBAction)onAddClick:(id)sender;
- (IBAction)onSettingClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *buttonTitle;
- (IBAction)onButtonTitleClick:(UIButton *)sender;

@end

@implementation GoalsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.buttonTitle setImagePositionWithType:SSImagePositionTypeRight spacing:10.0f];
    self.buttonTitle.backgroundColor = [UIColor whiteColor];
    self.buttonTitle.frame = CGRectMake(0, 0, 100, 40);
    
    [self p_initTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)p_initGoals {
    _goalsList = [NSMutableArray array];
}

#pragma mark -- tableview
- (void)p_initTableView {
    NSString* cellName = NSStringFromClass([GoalTableViewCell class]);
    [self.tableView registerNib:[UINib nibWithNibName:cellName bundle:nil] forCellReuseIdentifier:cellName];
    self.tableView.tableFooterView = [UIView new];
}

- (void)p_configCell:(UITableViewCell*)cell forIndex:(NSIndexPath*)indexPath {
    
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
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellName forIndexPath:indexPath];
    
    [self p_configCell:cell forIndex:indexPath];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onAddClick:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    GoalEditViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([GoalEditViewController class])];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)onSettingClick:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    SettingViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([SettingViewController class])];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)onButtonTitleClick:(UIButton *)sender {
    NSLog(@"%s", __FUNCTION__);
}
@end
