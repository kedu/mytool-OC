//
//  forecastModel.h
//  mytool-oc
//
//  Created by Apple on 17/3/16.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface forecastModel : NSObject

//风向
@property(nonatomic,copy)NSString*fengxiang;
//风力
@property(nonatomic,copy)NSString*fengli;
//高温
@property(nonatomic,copy)NSString*high;
//什么天气
@property(nonatomic,copy)NSString*type;
//低温
@property(nonatomic,copy)NSString*low;
//时间
@property(nonatomic,copy)NSString*date;

@end
