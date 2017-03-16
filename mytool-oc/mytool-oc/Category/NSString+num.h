//
//  NSString+num.h
//  mytool-oc
//
//  Created by Apple on 17/3/16.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (num)
//把阿拉伯数字转为中文数字
+(NSString *)translationchineseStr:(NSString* )arebic;
//把中文数字转为阿拉伯数字
+(NSString *)translationArebicStr:(NSString *)chineseStr;
@end
