//
//  SelectableDelegate.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/14.
//  Copyright © 2017年 heyou. All rights reserved.
//

#ifndef SelectableDelegate_h
#define SelectableDelegate_h

@protocol SelectableDelegate <NSObject>

@required
- (NSString*)titleForSelect;
- (id)valueForItem;

@end

#endif /* SelectableDelegate_h */
