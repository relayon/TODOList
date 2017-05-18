//
//  UITabBar+Extension.m
//  MyTabBar
//
//  Created by SMC-MAC on 17/3/23.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import "UITabBar+Extension.h"
#import <objc/runtime.h>

@implementation UITabBar (Extension)

- (UIButton*)buttonCenter {
    UIButton* btn = objc_getAssociatedObject(self, _cmd);
    return btn;
}

- (void)setButtonCenter:(UIButton *)buttonCenter {
    objc_setAssociatedObject(self, @selector(buttonCenter), buttonCenter, OBJC_ASSOCIATION_ASSIGN);
}

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    //NSLog(@"%s", __FUNCTION__);
    
    if (self.isHidden == NO) {
        
        //将当前tabbar的触摸点转换坐标系，转换到发布按钮的身上，生成一个新的点
        CGPoint newP = [self convertPoint:point toView:self.buttonCenter];
        
        //判断如果这个新的点是在发布按钮身上，那么处理点击事件最合适的view就是发布按钮
        if ( [self.buttonCenter pointInside:newP withEvent:event]) {
            return self.buttonCenter;
        }else{//如果点不在发布按钮身上，直接让系统处理就可以了
            return [super hitTest:point withEvent:event];
        }
    }
    
    return [super hitTest:point withEvent:event];
}

@end
