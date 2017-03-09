//
//  UIView+Util.m
//  iosapp
//
//  Created by chenhaoxiang on 14-10-17.
//  Copyright (c) 2014年 oschina. All rights reserved.
//

#import "UIView+Util.h"

@implementation UIView (Util)

#define kScreenScale GraScreenScale()


/**
 设置圆角

 @param cornerRadius 圆角大小参数
 */
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = kScreenScale;
}

CGFloat GraScreenScale(){
    static CGFloat scale;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        scale = [UIScreen mainScreen].scale;
    });
    return scale;
}


/**
 设置边框

 @param width 边框宽度
 @param color 边框颜色
 */
- (void)setBorderWidth:(CGFloat)width andColor:(UIColor *)color
{
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}


/**
 截屏

 @return 返回截屏的图片
 */
- (UIImage *)convertViewToImage
{
    UIGraphicsBeginImageContext(self.bounds.size);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    UIImage *screenshot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return screenshot;
}

/**
 更新遮罩

 @return 遮罩view
 */
- (UIImage *)updateBlur
{
    UIImageView* imageView = [UIImageView new];
    
    UIImage *screenshot = [self convertViewToImage];
    [imageView setImage:screenshot];
    
    UIVisualEffectView* blurView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight]];
    blurView.frame = imageView.bounds;
    
    [imageView addSubview:blurView];
    
    return [imageView convertViewToImage];
}

@end
