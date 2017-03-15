//
//  LKBAFN.h
//  mytool-oc
//
//  Created by Apple on 17/3/14.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>


@interface LKBAFN : NSObject

//extern BOOL whetherHaveNetwork;


+(void)GET:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError * error))failure;

+(void)POST:(NSString *)URLString parameters:(id)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError * error))failure;

@end
