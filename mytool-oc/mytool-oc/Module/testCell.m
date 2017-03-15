//
//  testCell.m
//  mytool-oc
//
//  Created by Apple on 17/3/15.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "testCell.h"
@interface testCell()

@property (weak, nonatomic) IBOutlet UISwitch *b;

@property (strong, nonatomic) IBOutlet testCell *testCell;



@end
@implementation testCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        

        [[NSBundle mainBundle]loadNibNamed:@"testCell" owner:self options:nil];
        
        [self.contentView addSubview:_testCell];

        
        
    }
   



    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

@end
