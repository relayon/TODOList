//
//  GoalListViewController.m
//  TODOList
//
//  Created by SMC-MAC on 2017/5/18.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "GoalListViewController.h"
#import "VMTableDataDelegate.h"
#import "UITableView+RegisterCell.h"

#import "BaseTableSectionViewModel.h"
#import "GoalModel.h"
#import "GoalItemVM.h"

@interface GoalListViewController () {
    VMTableDataDelegate* _tableDataDelegate;
}

@property (nonatomic, strong) NSMutableArray<GoalModel*>* goalList;
@property (nonatomic, strong) NSMutableArray<BaseTableSectionViewModel*>* dataList;

@end

@implementation GoalListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.goalList = [NSMutableArray array];
    self.dataList = [NSMutableArray array];
    [self p_registerCell];
    [self p_buildData];
    _tableDataDelegate = [VMTableDataDelegate delegateWithData:self.dataList];
    self.tableView.dataSource = _tableDataDelegate;
    self.tableView.delegate = _tableDataDelegate;
    //[self.tableView reloadData];
    NSLog(@"%s", __FUNCTION__);
}

- (void)p_registerCell {
    NSMutableSet<NSString*>* cellNames = [NSMutableSet set];
    [cellNames addObject:[GoalItemVM viewClassName]];
    
    [self.tableView registerCell:cellNames];
}

- (void)p_buildData {
    [self.goalList removeAllObjects];
    for (NSInteger i = 0; i < 20; i++) {
        GoalModel* gm = [[GoalModel alloc] init];
        gm.title = [NSString stringWithFormat:@"Goal_%ld", i];
        [self.goalList addObject:gm];
    }
    
    
    [self.dataList removeAllObjects];
    
    BaseTableSectionViewModel* sec = [BaseTableSectionViewModel modelWithController:self];

    for (GoalModel* gm in self.goalList) {
        GoalItemVM* item = [GoalItemVM modelWithController:self];
        [item updateWithDataModel:gm];
        [sec.cells addObject:item];
    }
    [self.dataList addObject:sec];
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

@end
