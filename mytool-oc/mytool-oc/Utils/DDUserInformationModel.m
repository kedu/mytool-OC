//
//  DDUserInformationModel.m
//  DaoDianProject
//
//  Created by yejingtao on 16/9/22.
//  Copyright © 2016年 到点网. All rights reserved.
//

#import "DDUserInformationModel.h"

@implementation DDUserInformationModel
//归档的时候调用：告诉系统哪个属性要归档，如何归档
-(void)encodeWithCoder:(NSCoder *)aCoder
{
   
    [aCoder encodeObject:_user_id forKey:@"user_id"];
    [aCoder encodeObject:_password forKey:@"password"];
    [aCoder encodeObject:_user_money forKey:@"user_money"];
    [aCoder encodeObject:_frozen_money forKey:@"frozen_money"];
    [aCoder encodeObject:_reg_time forKey:@"reg_time"];
    [aCoder encodeObject:_last_ip forKey:@"last_ip"];
    [aCoder encodeObject:_mobile forKey:@"mobile"];
    [aCoder encodeObject:_mobile_validated forKey:@"mobile_validated"];
    [aCoder encodeObject:_oauth forKey:@"oauth"];
    [aCoder encodeObject:_level forKey:@"level"];
    [aCoder encodeObject:_discount forKey:@"discount"];
    [aCoder encodeObject:_total_amount forKey:@"total_amount"];
    [aCoder encodeObject:_is_lock forKey:@"is_lock"];
    [aCoder encodeObject:_token forKey:@"token"];
    [aCoder encodeObject:_level_name forKey:@"level_name"];
    [aCoder encodeObject:_sex forKey:@"sex"];
    [aCoder encodeObject:_openid forKey:@"openid"];
    [aCoder encodeObject:_head_pic forKey:@"head_pic"];
}

//解档的时候调用：告诉系统哪个属性要解档，如何归解
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        _user_id = [aDecoder decodeObjectForKey:@"user_id"];
        _password = [aDecoder decodeObjectForKey:@"password"];
        _user_money = [aDecoder decodeObjectForKey:@"user_money"];
        _frozen_money = [aDecoder decodeObjectForKey:@"frozen_money"];
        _reg_time = [aDecoder decodeObjectForKey:@"reg_time"];
        _last_ip = [aDecoder decodeObjectForKey:@"last_ip"];
        _mobile = [aDecoder decodeObjectForKey:@"mobile"];
        _mobile_validated = [aDecoder decodeObjectForKey:@"mobile_validated"];
        _oauth = [aDecoder decodeObjectForKey:@"oauth"];
        _level = [aDecoder decodeObjectForKey:@"level"];
        _discount = [aDecoder decodeObjectForKey:@"discount"];
        _total_amount = [aDecoder decodeObjectForKey:@"total_amount"];
        _is_lock = [aDecoder decodeObjectForKey:@"is_lock"];
        _token = [aDecoder decodeObjectForKey:@"token"];
        _level_name = [aDecoder decodeObjectForKey:@"level_name"];
        _sex = [aDecoder decodeObjectForKey:@"sex"];
        _openid = [aDecoder decodeObjectForKey:@"openid"];
        _head_pic = [aDecoder decodeObjectForKey:@"head_pic"];
        
    }
    return self;
}

@end
