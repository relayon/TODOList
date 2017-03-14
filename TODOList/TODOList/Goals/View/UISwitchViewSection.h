//
//  UISwitchViewSection.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "BaseTableSection.h"

@interface UISwitchViewSection : BaseTableSection
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UISwitch *switchView;
@end
