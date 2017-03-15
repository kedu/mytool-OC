//
//  DDPhoneVesion.m
//  DaoDianProject
//
//  Created by yejingtao on 16/9/9.
//  Copyright © 2016年 到点网. All rights reserved.
//

#import "DDPhoneVersion.h"

@implementation DDPhoneVersion
+(CGFloat)getPhoneVersion{
    
    return   [[[UIDevice currentDevice] systemVersion] floatValue];
    
}

@end
