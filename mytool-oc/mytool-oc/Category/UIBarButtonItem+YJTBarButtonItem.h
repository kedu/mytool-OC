//
//  UIBarButtonItem+YJTBarButtonItem.h
//  WeiBoProject
//
//  Created by yejingtao on 16/5/22.
//  Copyright © 2016年 yejingtao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YJTBarButtonItem)
+(UIBarButtonItem *)setBarButtonItemWithImage:(UIImage *)image selectImage:(UIImage *)selectImage Target:(id)target Action:(SEL)action;
@end
