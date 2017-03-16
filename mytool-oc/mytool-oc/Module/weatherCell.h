//
//  weatherCell.h
//  mytool-oc
//
//  Created by Apple on 17/3/15.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface weatherCell : UITableViewCell

+(id)cell;


-(void)setIsToday:(NSString*)isToday date:(NSString*)date weatherType:(NSString*)weatherType weatherData:(NSString*)weatherData;


@end
