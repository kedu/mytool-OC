//
//  HomeVC.m
//  mytool-oc
//
//  Created by Apple on 17/3/8.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "HomeVC.h"
#import "SDCycleScrollView.h"

#define kLoopViewHeight 200

@interface HomeVC ()
@property (weak, nonatomic) IBOutlet UIView *loopView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loopViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *weatherHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *collectViewHeight;

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"主页";
    [self setLoop];
    
}

-(void)setLoop{

    // 本地加载图片的轮播器
//    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame: imagesGroup:图片数组];
    SDCycleScrollView*cycleScrollView=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, kLoopViewHeight) imageNamesGroup:@[@"1",@"2",@"3",@"4",@"5"]];
    self.loopViewHeight.constant=kLoopViewHeight;
//    cycleScrollView.bannerImageViewContentMode=UIViewContentModeCenter;
    
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.loopView addSubview:cycleScrollView];


}


-(void)viewWillLayoutSubviews{




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
