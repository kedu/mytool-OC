//
//  UIColor+Util.m
//  iosapp
//
//  Created by chenhaoxiang on 14-10-18.
//  Copyright (c) 2014年 oschina. All rights reserved.
//

#import "UIColor+Util.h"
#import "AppDelegate.h"

@implementation UIColor (Util)

#pragma mark - Hex

+ (UIColor *)colorWithHex:(int)hexValue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0
                           alpha:alpha];
}

+ (UIColor *)colorWithHex:(int)hexValue
{
    return [UIColor colorWithHex:hexValue alpha:1.0];
}


#pragma mark - theme colors

/* 列表整体背景色 */
+ (UIColor *)themeColor
{
    return [UIColor colorWithHex:0xebebf3];
}

/* 用户名颜色 */
+ (UIColor *)nameColor
{
    return [UIColor colorWithHex:0x087221];//0x24CF5F
}

+ (UIColor *)titleColor
{
    return [UIColor blackColor];
}

+ (UIColor *)separatorColor
{
    return [UIColor colorWithHex:0xC8C7CC];//0xd9d9df];
}

+ (UIColor *)cellsColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)titleBarColor//标题滚动按钮背景色
{
    return [UIColor colorWithHex:0xf6f6f6];
}

/* 动弹列表内容字体颜色 */
+ (UIColor *)contentTextColor
{
    return [UIColor colorWithHex:0x272727];
}


+ (UIColor *)selectTitleBarColor
{
    return [UIColor colorWithHex:0xE1E1E1];
}

/* 导航栏背景色 */
+ (UIColor *)navigationbarColor
{
    return [UIColor colorWithHex:0x24cf5f];//colorWithHex:0x15A230
}

+ (UIColor *)selectCellSColor
{
    return [UIColor colorWithHex:0xfcfcfc];
}

+ (UIColor *)labelTextColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)teamButtonColor
{
    return [UIColor colorWithHex:0xfbfbfd];
}

+ (UIColor *)infosBackViewColor
{
    return [UIColor clearColor];
}

+ (UIColor *)lineColor
{
    return [UIColor colorWithHex:0x2bc157];
}

+ (UIColor *)borderColor
{
    return [UIColor lightGrayColor];
}

+ (UIColor *)refreshControlColor
{
    return [UIColor colorWithHex:0x21B04B];
}

/* 新 cell.contentView 背景色*/
+ (UIColor *)newCellColor
{
    return [UIColor colorWithHex:0xffffff];
}

/* 新“综合”页面cell.titleLable 标题字体颜色*/
+ (UIColor *)newTitleColor
{
    return [UIColor colorWithHex:0x111111];
}

///* 新section 问答 按钮选中颜色*/
+ (UIColor *)newSectionButtonSelectedColor
{
    return [UIColor colorWithHex:0x24CF5F];
}

/* 新 分割线*/
+ (UIColor *)newSeparatorColor
{
    return [UIColor colorWithHex:0xC8C7CC];
}

/* 次要文字颜色 */
+ (UIColor *)newSecondTextColor
{
    return [UIColor colorWithHex:0x6A6A6A];
}

/* 辅助文字颜色 */
+ (UIColor *)newAssistTextColor
{
    return [UIColor colorWithHex:0x9D9D9D];
}



@end
