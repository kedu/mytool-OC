//
//  UIBarButtonItem+YJTBarButtonItem.m
//  WeiBoProject
//
//  Created by yejingtao on 16/5/22.
//  Copyright © 2016年 yejingtao. All rights reserved.
//

#import "UIBarButtonItem+YJTBarButtonItem.h"

@implementation UIBarButtonItem (YJTBarButtonItem)

/*
 UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
 [btn setImage:[UIImage imageNamed:@"navigationbar_friendsearch"] forState:UIControlStateNormal];
 [btn setImage:[UIImage imageNamed:@"navigationbar_friendsearch_highlighted"] forState:UIControlStateHighlighted];
 
 [btn addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
 
 self.navigationItem.leftBarButtonItem = [UIBarButtonItem alloc]initWithCustomView:
 */
+(UIBarButtonItem *)setBarButtonItemWithImage:(UIImage *)image selectImage:(UIImage *)selectImage Target:(id)target Action:(SEL)action
{
    UIButton * btn = [[UIButton alloc]init];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:selectImage forState:UIControlStateHighlighted];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}
@end
