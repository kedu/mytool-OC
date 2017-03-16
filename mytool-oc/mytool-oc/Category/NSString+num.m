//
//  NSString+num.m
//  mytool-oc
//
//  Created by Apple on 17/3/16.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "NSString+num.h"

@implementation NSString (num)


+(NSString *)translationchineseStr:(NSString*)arebic{
    
    NSString *str = arebic;
    NSArray *arabic_numerals = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0"];
    NSArray *chinese_numerals = @[@"一",@"二",@"三",@"四",@"五",@"六",@"七",@"八",@"九",@"零"];
    NSArray *digits = @[@"个",@"十",@"百",@"千",@"万",@"十",@"百",@"千",@"亿",@"十",@"百",@"千",@"兆"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:chinese_numerals forKeys:arabic_numerals];
    
    NSMutableArray *sums = [NSMutableArray array];
    for (int i = 0; i < str.length; i ++) {
        NSString *substr = [str substringWithRange:NSMakeRange(i, 1)];
        NSString *a = [dictionary objectForKey:substr];
        NSString *b = digits[str.length -i-1];
        NSString *sum = [a stringByAppendingString:b];
        if ([a isEqualToString:chinese_numerals[9]])
        {
            if([b isEqualToString:digits[4]] || [b isEqualToString:digits[8]])
            {
                sum = b;
                if ([[sums lastObject] isEqualToString:chinese_numerals[9]])
                {
                    [sums removeLastObject];
                }
            }else
            {
                sum = chinese_numerals[9];
            }
            
            if ([[sums lastObject] isEqualToString:sum])
            {
                continue;
            }
        }
        
        [sums addObject:sum];
    }
    
    NSString *sumStr = [sums  componentsJoinedByString:@""];
    NSString *chinese = [sumStr substringToIndex:sumStr.length-1];
    NSLog(@"%@ to %@",str,chinese);
    
    return chinese;
}



+(NSString *)translationArebicStr:(NSString *)chineseStr{
    
    NSString *str = chineseStr;
    
    NSArray *arabic_numerals = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0",@"0"];
    NSArray *chinese_numerals = @[@"一",@"二",@"三",@"四",@"五",@"六",@"七",@"八",@"九",@"零", @"十"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithObjects:arabic_numerals forKeys:chinese_numerals];
    
    NSMutableArray *sums = [NSMutableArray array];
    
    for (int i = 0; i < str.length; i ++) {
        NSString *substr = [str substringWithRange:NSMakeRange(i, 1)];
        NSString *sum = substr;
        if([chinese_numerals containsObject:substr]){
            
            if([substr isEqualToString:@"十"] && i < str.length){
                NSString *nextStr = [str substringWithRange:NSMakeRange(i+1, 1)];
                if([chinese_numerals containsObject:nextStr]){
                    continue;
                }
            }
            sum = [dictionary objectForKey:substr];
        }
        
        [sums addObject:sum];
    }
    
    NSString *sumStr = [sums  componentsJoinedByString:@""];
    
    return sumStr;
}
@end
