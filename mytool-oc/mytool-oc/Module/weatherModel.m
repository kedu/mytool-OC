//
//  weatherModel.m
//  mytool-oc
//
//  Created by Apple on 17/3/16.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "weatherModel.h"
#import "MJExtension.h"

@implementation weatherModel
//默认数组
+(NSDictionary *)mj_objectClassInArray
{
    return @{@"forecast":[forecastModel class]};
}

@end
