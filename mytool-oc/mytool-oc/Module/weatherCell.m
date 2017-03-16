//
//  weatherCell.m
//  mytool-oc
//
//  Created by Apple on 17/3/15.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "weatherCell.h"
#import "weatherModel.h"


@interface weatherCell()
@property (weak, nonatomic) IBOutlet UILabel *isToday;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *weatherType;
@property (weak, nonatomic) IBOutlet UILabel *weatherData;
@property (strong, nonatomic) IBOutlet weatherCell *weatherCell;

@property(nonatomic,strong)weatherModel*WeatherModel;

@end
@implementation weatherCell

-(void)setWeatherModel:(weatherModel *)WeatherModel{
     //设置数据
    _WeatherModel=WeatherModel;

}


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        
    }
    
    
    
    
    return self;
}
-(void)setIsToday:(NSString*)isToday date:(NSString*)date weatherType:(NSString*)weatherType weatherData:(NSString*)weatherData{
    
    _isToday.text=isToday;
    _date.text=date;
    _weatherType.text=weatherType;
    _weatherData.text=weatherData;
    
}

-(void)layoutSubviews{
    

}


- (void)awakeFromNib {
    [super awakeFromNib];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+(id)cell{
    
    
    return [[NSBundle mainBundle]loadNibNamed:@"weatherCell"owner:nil options:nil][0];
    

}
@end
