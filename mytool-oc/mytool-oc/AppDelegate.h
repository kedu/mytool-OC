//
//  AppDelegate.h
//  mytool-oc
//
//  Created by Apple on 17/2/22.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

