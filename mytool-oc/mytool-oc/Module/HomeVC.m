//
//  HomeVC.m
//  mytool-oc
//
//  Created by Apple on 17/3/8.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"主页";
    self.navigationController.navigationItem.title=@"主页";
    self.navigationController.title=@"主页";
    
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
