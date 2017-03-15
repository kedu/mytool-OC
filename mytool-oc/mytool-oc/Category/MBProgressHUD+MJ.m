//
//  MBProgressHUD+MJ.m
//
//  Created by mj on 13-4-18.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "MBProgressHUD+MJ.h"

@implementation MBProgressHUD (MJ)
#pragma mark 显示信息
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = text;
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 1秒之后再消失
    [hud hide:YES afterDelay:0.7];
}

#pragma mark 显示错误信息
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    hud.dimBackground = YES;
    return hud;
}

+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}

+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}
//+(instancetype)showSomeThing{
//    
//    
//    
////    UIView*view = [[[UIApplication sharedApplication] delegate]window ];
////     NSLog(@"begin");
//    
//    UIView*view=[[UIApplication sharedApplication].windows lastObject];
//   
//    for (UIView*tmpView in[view subviews]) {
//        
////        NSLog(@"%@",tmpView);
//        if ([tmpView isKindOfClass:[MBProgressHUD class]]) {
//            return nil;
//        }
//        
//    }
////    NSLog(@"end");
//
//    
//    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:view animated:NO];
//    
//    CABasicAnimation *ban = [CABasicAnimation animation];
//    
//    ban.fromValue=[NSValue valueWithCATransform3D:CATransform3DMakeScale(1, 1, 1)];
//    
//    ban.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(3.5, 3.5, 1)];
//    
//    ban.duration = 1;
//    
//    //  self.layer.transform =
//    //  transform.scale表示等比例拉伸
//    //  transform按照参数比例拉伸
//    ban.keyPath = @"transform";
//    //执行完动画不删除动画
//    ban.removedOnCompletion = YES;
//    //保持最新状态
//    ban.fillMode = kCAFillModeForwards;
//    
//    // Set the custom view mode to show any view.
//    hud.mode = MBProgressHUDModeCustomView;
//    // Set an image view with a checkmark.
//    
//    UIImage *image = [[UIImage imageNamed:@"xiao_tu"] imageWithRenderingMode:UIImageRenderingModeAutomatic];
//    
//    UIImageView*imgView=[[UIImageView alloc] initWithImage:image];
//
//    imgView.frame=CGRectMake(kpt(50), 0, imgView.frame.size.width, imgView.frame.size.height);
//    
//    ban.repeatCount=5;
//    
//    //如果通过keyPath设置了属性，后面的参数可以传nil
////    [imgView.layer addAnimation:ban forKey:nil];
////     [imgView2.layer addAnimation:ban forKey:nil];
//    
//    UIView*view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, kpt(233), kph(199))];
//    
//    UILabel*label=[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(imgView.frame)+kph(44), kpt(233), kpt(25))];
//    label.textAlignment=NSTextAlignmentCenter;
//    label.text=@"开启餐饮 \"E\" 时代";
//    label.font=[UIFont systemFontOfSize:kpt(24)];
//    label.textColor=kRGBColorFromHex(0xff1bac31);
//    [view1 addSubview:label];
//    [view1 addSubview:imgView];
////    view1.backgroundColor=[UIColor clearColor];
//
//    [view1.layer addAnimation:ban forKey:nil];
//    
//    hud.customView =view1;
//    [hud setYOffset:-40];
//    [hud setXOffset:-kpt(30)];
//    // Looks a bit nicer if we make it square.
//    hud.square = YES;
//   
//    
//    hud.color=[UIColor whiteColor];
//    
////    hud.backgroundColor=kRGBColorFromHexBackground(0xff555555);
//    hud.backgroundColor=[UIColor whiteColor];
//
//    [hud hide:YES afterDelay:5];
////    UIView*view=[[UIApplication sharedApplication].windows lastObject];
//    
//    for (UIView*tmpView in[view subviews]) {
//        
//        //                            NSLog(@"%@",tmpView);
//        if ([tmpView isKindOfClass:[MBProgressHUD class]]) {
//            
//            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                [tmpView removeFromSuperview];
//            });
//            
//        }
//    }
//
//    
//    return hud;
//
//
//}
@end
