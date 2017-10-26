//
//  UIViewController+CurrentViewController.h
//  ArenaShareSDK
//
//  Created by 张琳 on 2017/10/25.
//  Copyright © 2017年 张琳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (CurrentViewController)

//获取当前视图控制器
+(UIViewController *)currentViewController:(UIViewController *)base;
@end
