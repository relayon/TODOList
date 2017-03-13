//
//  TextEditViewController.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TextEditViewController.h"
#import "UIPlaceHolderTextView.h"

@interface TextEditViewController ()
//@property (weak, nonatomic) IBOutlet UIPlaceHolderTextView *textView;

@end

@implementation TextEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.placeHolder) {
        self.textView.placeholder = self.placeHolder;
    } else {
        self.textView.placeholder = L(@"请输入...");
    }
    
    if (self.text) {
        self.textView.text = self.text;
    } else {
        self.textView.text = @"";
    }
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
