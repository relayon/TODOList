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

@interface GoalEditViewController ()<UITableViewDataSource, UITableViewDelegate> {
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation GoalEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- tableview
- (void)p_initTableView {
    NSString* cellName = NSStringFromClass([UITextViewCell class]);
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
    return 0;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellName = NSStringFromClass([UITextViewCell class]);
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

@end
