//
//  TestNotifyTableViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/27.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TestNotifyTableViewController.h"
#import "NotificationManager.h"

@interface TestNotifyTableViewController ()

@end

@implementation TestNotifyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    if (indexPath.row == 0) {
        [[NotificationManager sharedInstance] getNotifyStatus:^(BOOL enabled) {
            NSLog(@"enable = %@", enabled?@"YES":@"NO");
        }];
    } else if (indexPath.row == 1) {
        [[NotificationManager sharedInstance] requestAuthorization:^(BOOL granted, NSError * _Nullable error) {
            NSLog(@"granted = %@", granted?@"YES":@"NO");
        }];
    } else if (indexPath.row == 2) {
        NotificationConfig* cfg = [[NotificationConfig alloc] init];
        cfg.notifyId = @"123";
        cfg.notifyBody = @"Uncomment the following line to preserve selection between presentations.Uncomment the following line to preserve selection between presentations.Uncomment the following line to preserve selection between presentations.";
        cfg.delaySeconds = 5;
        [[NotificationManager sharedInstance] scheduleNotification:cfg];
    } else if (indexPath.row == 3) {
        NotificationConfig* cfg = [[NotificationConfig alloc] init];
        cfg.notifyId = @"123";
        [[NotificationManager sharedInstance] removeNotification:cfg];
    } else if (indexPath.row == 4) {
        
    } else if (indexPath.row == 5) {
        
    } else if (indexPath.row == 6) {
        
    } else if (indexPath.row == 7) {
        
    }
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
//    return 0;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
