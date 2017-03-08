//
//  AppDelegate.m
//  mytool-oc
//
//  Created by Apple on 17/2/22.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "AppDelegate.h"
#import "TabBarController.h"
#import "AFNetworking.h"
#import "AFNetworkActivityIndicatorManager.h"
#import "SDWebImageManager.h"




typedef NS_ENUM(NSInteger, ModuleVCType) {
    ModuleVCHomeType=0,
    ModuleVCMapType,
    ModuleVCAddType,
    ModuleVCLiveType,
    ModuleVCMeType
};


@interface AppDelegate ()



@end

@implementation AppDelegate

//1.有几个模块,分别是主页,就是提供每天都需要的消息.天气必须要有,调用天气局的接口,某年某月某日.点击里面有具体介绍.
// 新闻(我要搞一个爬虫,专门抓取网易的每个大类的前5条新闻),可以收藏新闻.还有商品列表购买.
// 2.地图出行 ,智能交互 (通过蓝牙,wifi,其他感应器控制其他设备).
//3.日记,可以文字,图片,录音,视频.
//4.直播..好友聊天
//5.自己,提供注册登录功能.修改密码.提交反馈信息.查看日记.
//极光推送,mop短信验证,友盟登录,分享,ping++支付.
//需要引入jspatch,和react.
//热更新被封

//swift我还是要先学习,再上手.





- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //设置窗口和根控制器
    UIWindow*window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window=window;
    self.window.backgroundColor=[UIColor whiteColor];
    
    //网络
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    //网络指示器
//    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];//默认是NO.
    
    //sd加载的数据类型
    [[[SDWebImageManager sharedManager] imageDownloader] setValue:@"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" forHTTPHeaderField:@"Accept"];
    
    //设置导航条样式
    [self customizeInterface];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    
    
    TabBarController*TabVC= [[TabBarController alloc]init];
    //UINavigationController*navVC=[[UINavigationController alloc]initWithRootViewController:TabVC];
    window.rootViewController=TabVC;
    [window makeKeyAndVisible];
//    sleep(10);
//    五个控制器,五个图片加文字
    /*
     //判断是否登录,展示不同的页面
    if ([Login isLogin]) {
        [self setupTabViewController];
    }else{
        [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
        [self setupIntroductionViewController];
    }
    [self.window makeKeyAndVisible];
     //显示介绍页面
    [FunctionIntroManager showIntroPage];
    
    //缓和开始页面
    EaseStartView *startView = [EaseStartView startView];
    @weakify(self);
    [startView startAnimationWithCompletionBlock:^(EaseStartView *easeStartView) {
        @strongify(self);
        [self completionStartAnimationWithOptions:launchOptions];
    }];
    */
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"mytool_oc"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

- (void)customizeInterface {
    //设置Nav的背景色和title色
   /*
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    [navigationBarAppearance setBackgroundImage:[UIImage imageWithColor:[NSObject baseURLStrIsProduction]? kColorNavBG: kColorBrandGreen] forBarMetrics:UIBarMetricsDefault];
    
    [navigationBarAppearance setTintColor:kColorBrandGreen];返回按钮的箭头颜色
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: [UIFont systemFontOfSize:kNavTitleFontSize],
                                     NSForegroundColorAttributeName: kColorNavTitle,
                                     };
    [navigationBarAppearance setTitleTextAttributes:textAttributes];
    
    [[UITextField appearance] setTintColor:kColorBrandGreen];设置UITextField的光标颜色
    [[UITextView appearance] setTintColor:kColorBrandGreen];设置UITextView的光标颜色
    [[UISearchBar appearance] setBackgroundImage:[UIImage imageWithColor:kColorTableSectionBg] forBarPosition:0 barMetrics:UIBarMetricsDefault];
    */
}



@end
