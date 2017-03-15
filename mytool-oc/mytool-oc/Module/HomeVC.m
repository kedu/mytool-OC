//
//  HomeVC.m
//  mytool-oc
//
//  Created by Apple on 17/3/8.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "HomeVC.h"
#import <SDCycleScrollView.h>
#import "testCell.h"
#import "weatherCell.h"

#define kLoopViewHeight 200

@interface HomeVC ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *loopView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loopViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *weatherHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *collectViewHeight;
@property (weak, nonatomic) IBOutlet UITableView *weatherView;
@property (weak, nonatomic) IBOutlet UITableView *newsView;
@property(nonatomic,strong)NSArray*weatherArray;
@property(nonatomic,strong)NSDictionary*weatherDict;

@end

@implementation HomeVC

-(NSArray*)weatherArray{
    if (_weatherArray==nil) {
        _weatherArray=[NSArray array];
    }
    return _weatherArray;
}

-(NSDictionary*)weatherDict{
    if (_weatherDict==nil) {
        _weatherDict=[NSDictionary dictionary];
    }
   
    return _weatherDict;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"主页";
    self.weatherView.delegate=self;
    self.newsView.delegate=self;
    self.weatherView.dataSource=self;
    self.newsView.dataSource=self;

    [self setLoop];
    [self getData];
    [self setWeather];
    [self setNews];
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
-(void)getData{
    
    NSString*url=[NSString stringWithFormat:@"http://wthrcdn.etouch.cn/weather_mini?city=深圳"];
    NSString*url_last=[url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
   [LKBAFN GET:url_last parameters:nil success:^(id responseObject) {
       NSDictionary*dic=[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
       _weatherDict=dic;
//       NSLog(@"%@",_weatherDict);
       
       
   } failure:^(NSError *error) {
       
   }];


}

-(void)setWeather{


}
-(void)setNews{
    
    
}

-(void)viewWillLayoutSubviews{




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView==self.weatherView) {
        return 90;
    }
    if (tableView==self.newsView) {
        return 100;
    }

    return 200;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (tableView==self.weatherView) {
        return 100;
    }
    if (tableView==self.newsView) {
        return 100;
    }
    
    return 100;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView==self.weatherView) {
        static NSString* reuseID=@"weatherCell";
        UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:reuseID];
        if (cell==nil) {
//            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseID];
            cell=[[weatherCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseID];
                        
            
        }
        
        return cell;
    }
    if (tableView==self.newsView) {
        static NSString* newsID=@"newsCell";
        UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:newsID];
        if (cell==nil) {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:newsID];
        }
        
        return cell;    }

    
    static NSString* otherID=@"otherCell";
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:otherID];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:otherID];
    }
    
    return cell;

}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if (tableView==self.weatherView) {
        return 100;
    }
    if (tableView==self.newsView) {
        return 100;
    }

    return 1;

}


@end
