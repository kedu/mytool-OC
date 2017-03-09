//
//  HomeVC.m
//  mytool-oc
//
//  Created by Apple on 17/3/8.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "HomeVC.h"
#import "SDCycleScrollView.h"

@interface HomeVC ()

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
    SDCycleScrollView*cycleScrollView=[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, self.navigationController.navigationBar.frame.size.height, [UIScreen mainScreen].bounds.size.width, 200) imageNamesGroup:@[@"1",@"2",@"3",@"4",@"5"]];
    
//    cycleScrollView.bannerImageViewContentMode=UIViewContentModeCenter;
    
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.view addSubview:cycleScrollView];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
