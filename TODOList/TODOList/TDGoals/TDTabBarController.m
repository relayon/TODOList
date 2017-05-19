//
//  TDTabBarController.m
//  TODOList
//
//  Created by SMC-MAC on 2017/5/18.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TDTabBarController.h"
#import "UITabBar+Extension.h"
#import "MiddleViewController.h"

@interface TDTabBarController () <UITabBarControllerDelegate>

@end

@implementation TDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self p_addCenterButton];
    
    self.delegate = self;
}

- (void)onButtonClick:(id)sender {
    NSLog(@"%s", __FUNCTION__);
}

- (void)p_addCenterButton {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@"" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 75, 75);
    btn.layer.masksToBounds = YES;
    btn.layer.cornerRadius = 75/2.0f;
//    btn.layer.borderWidth = 0.5f;
//    btn.layer.borderColor = [UIColor redColor].CGColor;
    [btn addTarget:self action:@selector(onButtonClick:) forControlEvents:UIControlEventTouchDown];
    [btn setImage:[UIImage imageNamed:@"img_add"] forState:UIControlStateNormal];
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

#pragma mark -- UITabBarControllerDelegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    if ([viewController isKindOfClass:[MiddleViewController class]]) {
        return NO;
    }
    
    return YES;
}

@end
