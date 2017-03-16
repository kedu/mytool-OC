//
//  weatherModel.h
//  mytool-oc
//
//  Created by Apple on 17/3/16.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "yesterdayModel.h"
#import "forecastModel.h"

@interface weatherModel : NSObject

//温度
@property(nonatomic,copy)NSString*wendu;
//感冒指数
@property(nonatomic,copy)NSString*ganmao;
//未来天气
@property(nonatomic,strong)NSMutableArray*forecast;
//昨天天气
@property(nonatomic,strong)yesterdayModel*yesterday;
//空气质量指数
@property(nonatomic,copy)NSString*aqi;
//城市
@property(nonatomic,copy)NSString*city;



@end
