//
//  TextEditViewController.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIPlaceHolderTextView.h"
/**
 *  内容编辑完成后回调 - Block
 */
typedef void (^TextEditEndBlock)(NSString* text);

@interface TextEditViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIPlaceHolderTextView *textView;

/**
 *  需要编辑的内容
 */
@property (copy, nonatomic) NSString *text;
/**
 *  当内容为空是提示信息
 */
@property (copy, nonatomic) NSString *placeHolder;
/**
 *  编辑完成后的回调
 */
@property (copy) TextEditEndBlock onTextEditEnd;
/**
 *  输入文本字数限制
 */
@property (assign, nonatomic) NSInteger limitLen;

@end
