//
//  TabBarController.m
//  mytool-oc
//
//  Created by Apple on 17/3/8.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "TabBarController.h"

#import "HomeVC.h"
#import "MapVC.h"
#import "AddVC.h"
#import "LiveVC.h"
#import "MeVC.h"

#import "OptionButton.h"

@interface TabBarController ()

@property (nonatomic, strong) UIView *dimView;
@property (nonatomic, strong) UIImageView *blurView;
@property (nonatomic, assign) BOOL isPressed;
@property (nonatomic, strong) NSMutableArray *optionButtons;
@property (nonatomic, strong) UIDynamicAnimator *animator;

@property (nonatomic, assign) CGFloat screenHeight;
@property (nonatomic, assign) CGFloat screenWidth;
@property (nonatomic, assign) CGGlyph length;

//typedef int (^myBlock) (int a);
//@property(nonatomic,copy)myBlock block;
@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    HomeVC*homeVC=[HomeVC new];
    UIStoryboard*homeSB=[UIStoryboard storyboardWithName:@"HomeVC" bundle:nil];
    HomeVC*homeVC=[homeSB instantiateViewControllerWithIdentifier:@"HomeSB"];
    MapVC*mapVC=[MapVC new];
    AddVC*addVC=[AddVC new];
    LiveVC*liveVC=[LiveVC new];
    MeVC*meVC=[MeVC new];
    //不透明
    self.tabBar.translucent = NO;
    
    self.viewControllers=@[[self addNavigationItemForViewController:homeVC],
                            [self addNavigationItemForViewController:mapVC],
                            [self addNavigationItemForViewController:addVC],
                            [self addNavigationItemForViewController:liveVC],
                            [self addNavigationItemForViewController:meVC]
                            ];
    _linkUtilNavController = [self.viewControllers objectAtIndex:0];
    
    
    NSArray *titles = @[@"主页", @"地图", @"", @"直播", @"我"];
    NSArray *images = @[@"tabbar-news", @"tabbar-tweet", @"", @"tabbar-discover", @"tabbar-me"];
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem *item, NSUInteger idx, BOOL *stop) {
        [item setTitle:titles[idx]];
        item.image = [[UIImage imageNamed:images[idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        item.selectedImage = [[UIImage imageNamed:[images[idx] stringByAppendingString:@"-selected"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }];
    
    [self.tabBar.items[2] setEnabled:NO];
    
    [self addCenterButtonWithImage:[UIImage imageNamed:@"ic_nav_add"]];
    
    [self.tabBar addObserver:self
                  forKeyPath:@"selectedItem"
                     options:NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew
                     context:nil];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
    });
    
}

//给控制器加导航控制器,最后添加返回导航控制器
- (UINavigationController *)addNavigationItemForViewController:(UIViewController *)viewController
{
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    return navigationController;
    
}

//添加中心按钮
-(void)addCenterButtonWithImage:(UIImage *)buttonImage
{
    _centerButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGPoint origin = [self.view convertPoint:self.tabBar.center toView:self.tabBar];
    CGSize buttonSize = CGSizeMake(self.tabBar.frame.size.width / 5 - 6, self.tabBar.frame.size.height - 4);
    
    _centerButton.frame = CGRectMake(origin.x - buttonSize.height/2, origin.y - buttonSize.height/2-20, buttonSize.height, buttonSize.height);
    
    [_centerButton setImage:buttonImage forState:UIControlStateNormal];
    [_centerButton setImage:[UIImage imageNamed:@"ic_nav_add_actived"] forState:UIControlStateHighlighted];
    [_centerButton addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [[UITabBar appearance] setShadowImage:[[UIImage alloc]init]];
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc]init]];
    
    [self.tabBar addSubview:_centerButton];
}

- (void)dealloc
{
    [self.tabBar removeObserver:self forKeyPath:@"selectedItem"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if ([keyPath isEqualToString:@"selectedItem"]) {
        
        if(self.isPressed) {[self buttonPressed];}
        
        
    }
}

- (void)buttonPressed
{
    
}

















@end
