//
//  UIImage+YJTUIImage.h
//  WeiBoProject
//
//  Created by yejingtao on 16/5/21.
//  Copyright © 2016年 yejingtao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YJTUIImage)
// instancetype默认会识别当前是哪个类或者对象调用，就会转换成对应的类的对象
// UIImage *

// 加载最原始的图片，没有渲染
+ (instancetype)imageWithOriginalName:(NSString *)imageName;

+ (instancetype)imageWithStretchableName:(NSString *)imageName;

@end
