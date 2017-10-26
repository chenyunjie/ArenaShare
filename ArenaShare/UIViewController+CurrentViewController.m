//
//  UIViewController+CurrentViewController.m
//  ArenaShareSDK
//
//  Created by 张琳 on 2017/10/25.
//  Copyright © 2017年 张琳. All rights reserved.
//

#import "UIViewController+CurrentViewController.h"

@implementation UIViewController (CurrentViewController)

+(UIViewController *)currentViewController:(UIViewController *)base{

    if(base == nil){
        base = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    }
    

    if(base != nil && [base isKindOfClass:[UINavigationController class]]){
        UINavigationController *nav = (UINavigationController *) base;
        return [UIViewController currentViewController:[nav visibleViewController]];
    }
    if(base != nil && [base isKindOfClass:[UITabBarController class]]){
        UITabBarController *tabbar = (UITabBarController*) base;
        return [UIViewController currentViewController:[tabbar selectedViewController]];
    }
    if(base.presentedViewController != nil){
        return [UIViewController currentViewController:base.presentedViewController];
    }
    
    return base;

}

@end
