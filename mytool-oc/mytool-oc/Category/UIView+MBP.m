//
//  UIView+MBP.m
//  DaoDianProject
//
//  Created by Apple on 17/1/10.
//  Copyright © 2017年 到点网. All rights reserved.
//

#import "UIView+MBP.h"

@implementation UIView (MBP)

//-(MBProgressHUD*)addsomeThing:(UIView*)view{
//    
//    //    UIView*view = [[[UIApplication sharedApplication] delegate]window ];
////    UIView*view1=[[UIApplication sharedApplication].windows lastObject];
//    
//    MBProgressHUD * hud = [MBProgressHUD showHUDAddedTo:view animated:NO];
//    
//    CABasicAnimation *ban = [CABasicAnimation animation];
//    
//    ban.fromValue=[NSValue valueWithCATransform3D:CATransform3DMakeScale(1, 1, 1)];
//    
//    ban.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(2.5, 2.5, 1)];
//    
//    ban.duration = 1.5;
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
//    ban.repeatCount=10;
//    
//    //如果通过keyPath设置了属性，后面的参数可以传nil
//    //    [imgView.layer addAnimation:ban forKey:nil];
//    //     [imgView2.layer addAnimation:ban forKey:nil];
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
//    hud.backgroundColor=[UIColor whiteColor];
//    
//    [hud hide:YES afterDelay:5];
//
//  
//    return hud;
//}
@end
