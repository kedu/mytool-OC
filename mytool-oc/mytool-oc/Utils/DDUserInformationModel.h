//
//  DDUserInformationModel.h
//  DaoDianProject
//
//  Created by yejingtao on 16/9/22.
//  Copyright © 2016年 到点网. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DDUserInformationModel : NSObject<NSCoding>

//用户id
@property (nonatomic,copy) NSString * user_id;//1


//密码
@property (nonatomic,copy) NSString * password;//1

//用户余额
@property (nonatomic,copy) NSString * user_money;

//冻结金额
@property (nonatomic,copy) NSString * frozen_money;

//注册时间
@property (nonatomic,copy) NSString * reg_time;

//最后一次登录ip
@property (nonatomic,copy) NSString * last_ip;

//手机号
@property (nonatomic,copy) NSString * mobile;

//是否开启手机验证
@property (nonatomic,copy) NSString * mobile_validated;

//第三方来源wx alipay
@property (nonatomic,copy) NSString * oauth;

//会员等级
@property (nonatomic,copy) NSString * level;

//会员折扣 默认1不享受折扣
@property (nonatomic,copy) NSString * discount;

//累计消费额度
@property (nonatomic,copy) NSString * total_amount;

//是否被封禁0为不封禁
@property (nonatomic,copy) NSString * is_lock;

//token
@property (nonatomic,copy) NSString * token;

//会员对应等级
@property (nonatomic,copy) NSString * level_name;

//性别
@property (nonatomic,copy) NSString * sex;

//第三方标示
@property (nonatomic,copy) NSString * openid;

//头像
@property (nonatomic,copy) NSString * head_pic;


@end
