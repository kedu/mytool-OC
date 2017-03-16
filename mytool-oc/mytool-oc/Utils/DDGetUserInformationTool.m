//
//  DDGetUserInformationTool.m
//  DaoDianProject
//
//  Created by yejingtao on 16/9/22.
//  Copyright © 2016年 到点网. All rights reserved.
//

#import "DDGetUserInformationTool.h"

@implementation DDGetUserInformationTool

//归档
+(void)saveUserInformationWithModel:(DDUserInformationModel *)model{
    
    //保存用户信息
    [NSKeyedArchiver archiveRootObject:model toFile:DDUserInformationPath];
}

//解档
+(DDUserInformationModel *)getUserInformation{
    
    return [NSKeyedUnarchiver unarchiveObjectWithFile:DDUserInformationPath];
}

+(void)deleteUserInformation{
    //删除归档文件
    NSFileManager *defaultManager = [NSFileManager defaultManager];
    if ([defaultManager isDeletableFileAtPath:DDUserInformationPath]) {
        [defaultManager removeItemAtPath:DDUserInformationPath error:nil];
    }
}

@end
