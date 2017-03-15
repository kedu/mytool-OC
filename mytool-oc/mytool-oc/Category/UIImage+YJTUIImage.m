//
//  UIImage+YJTUIImage.m
//  WeiBoProject
//
//  Created by yejingtao on 16/5/21.
//  Copyright © 2016年 yejingtao. All rights reserved.
//

#import "UIImage+YJTUIImage.h"

@implementation UIImage (YJTUIImage)

+ (instancetype)imageWithOriginalName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithStretchableName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}

@end
