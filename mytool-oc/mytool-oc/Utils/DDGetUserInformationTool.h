//
//  DDGetUserInformationTool.h
//  DaoDianProject
//
//  Created by yejingtao on 16/9/22.
//  Copyright © 2016年 到点网. All rights reserved.
//

#define DDUserInformationPath @"123"
//对用户信息模型进行归档和反归档,删除

#import <Foundation/Foundation.h>
#import "DDUserInformationModel.h"

@interface DDGetUserInformationTool : NSObject

+(void)saveUserInformationWithModel:(DDUserInformationModel *)model;

+(DDUserInformationModel *)getUserInformation;

+(void)deleteUserInformation;

@end
