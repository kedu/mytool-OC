//
//  yesterdayModel.h
//  
//
//  Created by Apple on 17/3/16.
//
//

#import <Foundation/Foundation.h>

@interface yesterdayModel : NSObject
//风力等级
@property(nonatomic,copy)NSString*fl;
//什么风
@property(nonatomic,copy)NSString*fx;
//高温
@property(nonatomic,copy)NSString*high;
//什么天气
@property(nonatomic,copy)NSString*type;
//低温
@property(nonatomic,copy)NSString*low;
//时间
@property(nonatomic,copy)NSString*date;


@end
