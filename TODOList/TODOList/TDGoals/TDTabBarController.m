//
//  TDTabBarController.m
//  TODOList
//
//  Created by SMC-MAC on 2017/5/18.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TDTabBarController.h"
#import "UITabBar+Extension.h"

@interface TDTabBarController ()

@end

@implementation TDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self p_addCenterButton];
}

- (void)onButtonClick:(id)sender {
    NSLog(@"%s", __FUNCTION__);
}

- (void)p_addCenterButton {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"开始" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 75, 75);
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = 75/2.0f;
    btn.layer.borderWidth = 0.5f;
    btn.layer.borderColor = [UIColor redColor].CGColor;
    [btn addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchDown];
    
    UITabBar* tabBar = self.tabBar;
    
    // btn.center = tabBar.center;
    btn.center = CGPointMake(SCREEN_WIDTH/2.0, 25.0f/2.0f);   // (75-50)/2
    
    [tabBar addSubview:btn];
    
    self.tabBar.buttonCenter = btn;
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
