//
//  Share.h
//  ArenaShare
//
//  Created by 陈云杰 on 2017/10/26.
//  Copyright © 2017年 江苏斑马软件技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Share : NSObject
    //友盟基本设置
+ (void)configUSharePlatformsWith:(NSString *)umAppKey andWXAppKey:(NSString *)wxAppKey
                      andWXSecret:(NSString *)wxSecret andQQAppKey:(NSString *)qqAppKey
                   andRedirectURL:(NSString *)redirectUrl;
    //分享
+(void)share:(NSDictionary*) data;
@end
