////
////  DDNetworkTool.m
////  DaoDianProject
////
////  Created by yejingtao on 16/8/19.
////  Copyright © 2016年 到点网. All rights reserved.
////
//
#import "DDNetworkTool.h"
#import "MBProgressHUD+MJ.h"
//
@implementation DDNetworkTool
//
//+(void)GET:(NSString *)URLString parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure
//{
////    if (whetherHaveNetwork) {
////                // 在这里发送网络请求
//
//                MBProgressHUD * hud = [MBProgressHUD showMessage:@"请稍候"];
//    
//    
//
//                AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
//                session.responseSerializer = [AFHTTPResponseSerializer serializer];
//                [session GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//                    [hud hide:YES];
//                    if (success) {
//                        success(responseObject);
//                    }
//                } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//                    
//                    [hud hide:YES];
//                    
//                    if (failure) {
//                        failure(error);
//                    }
//                }];
////    }else{
////        
////        MBProgressHUD * hud = [MBProgressHUD showMessage:@"没网请联网"];
////        [hud performSelector:@selector(hide:) withObject:nil afterDelay:2];
////      
////    
////    
////    
////    }
//    
//    
//    
//}
//
//+(void)POST:(NSString *)URLString parameters:(id)parameters success:(void (^)(id))success failure:(void (^)(NSError *))failure
//{
////    if (whetherHaveNetwork) {
////                    // 在这里发送网络请求
//    
////                    MBProgressHUD * hud = [MBProgressHUD showMessage:@"请稍候"];
//                    MBProgressHUD * hud =[MBProgressHUD showSomeThing];
//    
//                    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
//    
//                    session.responseSerializer = [AFHTTPResponseSerializer serializer];
//                    
//                    [session POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//                        [hud hide:YES];
//                        
//                        UIView*view=[[UIApplication sharedApplication].windows lastObject];
//                        
//                        for (UIView*tmpView in[view subviews]) {
//                            
////                            NSLog(@"%@",tmpView);
//                            if ([tmpView isKindOfClass:[MBProgressHUD class]]) {
//                                
//                                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                                    [tmpView removeFromSuperview];
//                                });
//                                
//                            }
//                            
//                        }
//
////                        [hud hide:YES afterDelay:10];
//
//                        if (success) {
//                            success(responseObject);
//                        }
//                    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//                        [hud hide:YES];
//                        if (failure) {
//                            failure(error);
//                        }
//                        
//                    }];
////        }else{
////
////            MBProgressHUD * hud = [MBProgressHUD showMessage:@"没网请联网"];
////            [hud performSelector:@selector(hide:) withObject:nil afterDelay:2];
////
////
////            }
//    
//}
//
//
//
////上传多张图片
//
//+ (void)requestWithUrl:(NSString *)url
//
//      withPostedImages:(NSArray *)imagesArray
//
//      WithSuccessBlock:(void (^)(NSArray * resultArray))successBlock
//
//           WithNeebHub:(BOOL)needHub
//
//              WithView:(UIView *)viewWithHub
//
//              WithData:(NSDictionary *)dataDic
//
//{
//    
//    if (imagesArray.count > 0) {
//        
//        
//        
//        //创建一个临时的数组，用来存储回调回来的结果
//        
//        NSMutableArray *temArray = [NSMutableArray array];
//        
//        
//        MBProgressHUD * hud =  [MBProgressHUD showMessage:@"正在上传图片，请稍候.."];
//        
//        for (int i = 0;  i < imagesArray.count; i++) {
//            
//            UIImage *imageObj = imagesArray[i];
//            
//            //截取图片
//            
//            NSData *imageData = UIImageJPEGRepresentation(imageObj, 0.5);
//            
//            
//            
//            AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//            
//            
//            
//            manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//            
//            
//            // 访问路径
//            [manager POST:url parameters:dataDic constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
//                
//                
//                
//                // 上传文件
//                
//                NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//                
//                formatter.dateFormat = @"yyyyMMddHHmmss";
//                
//                NSString *str = [formatter stringFromDate:[NSDate date]];
//                
//                NSString *fileName = [NSString stringWithFormat:@"%@.jpg", str];
//                
//                
//                
//                [formData appendPartWithFileData:imageData name:@"file" fileName:fileName mimeType:@"image/png"];
//                
//                
//                
//            } progress:^(NSProgress * _Nonnull uploadProgress) {
//                
////                NSLog(@"%@",uploadProgress);
//                
//                
//            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//                
//                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers | NSJSONReadingMutableLeaves error:nil];
//                
//                
//                
//                [temArray addObject:dic];
//                
//                
//                
//                //当所有图片上传成功后再将结果进行回调
//                
//                if (temArray.count == imagesArray.count) {
//                    [hud hide:YES];
//                    [SVProgressHUD showSuccessWithStatus:@"图片上传成功"];
//                    successBlock(temArray);
//                    
//                }
//                
//            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//                
//                
//                
//            }];
//            
//        }
//        
//    }
//    
//}
//
@end
