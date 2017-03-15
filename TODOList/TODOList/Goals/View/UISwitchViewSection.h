//
//  UISwitchViewSection.h
//  TODOList
//
//  Created by SMC-MAC on 17/3/13.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "TableBaseSectionViewProtocol.h"

@interface UISwitchViewSection : UIView <TableBaseSectionViewProtocol>
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UISwitch *switchView;
@end
