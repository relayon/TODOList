//
//  TitleDetailViewProtocol.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/16.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef TitleDetailViewProtocol_h
#define TitleDetailViewProtocol_h

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol TitleDetailViewProtocol <NSObject>

@required

/**
 标题
 */
@property (nonatomic, copy) NSString* title;

/**
 详情
 */
@property (nonatomic, copy) NSString* detail;

@end

NS_ASSUME_NONNULL_END

#endif /* TitleDetailViewProtocol_h */
