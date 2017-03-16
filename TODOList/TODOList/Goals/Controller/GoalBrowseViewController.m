//
//  GoalBrowseViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalBrowseViewController.h"
#import "UITableView+Extension.h"

#import "TitleDetailCellViewModel.h"
#import "TitleDetailTableViewCell.h"
#import "GoalModel+Extension.h"
#import "NSDate+NSString.h"

@interface GoalBrowseViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSArray<TitleDetailCellViewModel*>* _dataList;
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

#pragma mark -- tableview
- (void)p_buildData {
    NSMutableArray* mary = [NSMutableArray array];
    
    TitleDetailCellViewModel* content = [TitleDetailCellViewModel modelWithTitle:@"目标" detail:self.goalModel.content];
    [mary addObject:content];
    
    if ([self.goalModel isTip]) {
        TitleDetailCellViewModel* tip = [TitleDetailCellViewModel modelWithTitle:@"提示" detail:@"是"];
        [mary addObject:tip];
        
        TitleDetailCellViewModel* date = [TitleDetailCellViewModel modelWithTitle:@"时间" detail:[self.goalModel.fireDate smc_string]];
        [mary addObject:date];
        
        TitleDetailCellViewModel* repeat = [TitleDetailCellViewModel modelWithTitle:@"重复" detail:[GoalEnum stringWithReminderRepeat:self.goalModel.repeat]];
        [mary addObject:repeat];
    } else {
        TitleDetailCellViewModel* tip = [TitleDetailCellViewModel modelWithTitle:@"提示" detail:@"否"];
        [mary addObject:tip];
    }
    
    _dataList = mary;
}

- (void)p_initTableView {
    [self.tableView registerCell:[TitleDetailTableViewCell class]];
    self.tableView.tableFooterView = [UIView new];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)p_configCell:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
    TitleDetailTableViewCell* tCell = (TitleDetailTableViewCell*)cell;
    
    TitleDetailCellViewModel* cellModel = [_dataList objectAtIndex:indexPath.row];
    [tCell updateWithViewModel:cellModel];
}

#pragma mark -- UITableViewDataSource && UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataList.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* identifier = NSStringFromClass([TitleDetailTableViewCell class]);
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    [self p_configCell:cell forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
}

@end
