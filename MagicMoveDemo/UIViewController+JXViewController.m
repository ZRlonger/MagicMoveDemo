//
//  UIViewController+JXViewController.m
//  MagicMoveDemo
//
//  Created by pconline on 2017/2/3.
//  Copyright © 2017年 pconline. All rights reserved.
//

#import "UIViewController+JXViewController.h"
#import <objc/runtime.h>

@implementation UIViewController (JXViewController)

-(void)jx_setMagicMoveStartViews:(NSArray<UIView*> *)views{
    if (views.count > 0) {
        objc_setAssociatedObject(self, &kJXMagicMoveAnimatorStartViewVCKey, views, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

-(void)jx_setMagicMoveEndViews:(NSArray<UIView*> *)views{
    if (views.count > 0) {
        objc_setAssociatedObject(self, &kJXMagicMoveAnimatorEndViewVCKey, views, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

NSString *const kJXMagicMoveAnimatorStartViewVCKey = @"kJXMagicMoveAnimatorStartViewVCKey";
NSString *const kJXMagicMoveAnimatorEndViewVCKey = @"kJXMagicMoveAnimatorEndViewVCKey";

@end
