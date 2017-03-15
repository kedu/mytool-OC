//
//  weatherCell.m
//  mytool-oc
//
//  Created by Apple on 17/3/15.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "weatherCell.h"
@interface weatherCell()


@property (strong, nonatomic) IBOutlet weatherCell *weatherView;

@end
@implementation weatherCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        
        [[NSBundle mainBundle]loadNibNamed:@"weatherCell" owner:self options:nil];
        
        [self.contentView addSubview:_weatherView];
        
        
        
    }
    
    
    
    
    return self;
}


-(void)layoutSubviews{
    
    [_weatherView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsMake(5, 5, 5, 5));
        
        
        
        
    }];
    
    




}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
