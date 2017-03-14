//
//  TableCellModel.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableCellModel : NSObject

- (NSString*)title;
- (NSString*)detail;

- (void)bind;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

// init
@property (nonatomic, weak) UIViewController* controller;
@property (nonatomic, copy) NSString* cellName;
@property (nonatomic, assign) float height;
+ (instancetype)modelWithController:(UIViewController*)controller cellName:(NSString*)cellName;
+ (instancetype)modelWithController:(UIViewController*)controller cellName:(NSString*)cellName height:(float)height;

@end

NS_ASSUME_NONNULL_END
