//
//  AppDelegate.m
//  UIWindow
//
//  Created by 王宇珍 on 16/10/29.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


//当程序框架初始化成功后，调用此函数
//用来初始化整个程序框架结构。即整个程序对IOS开发工程师的入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建一个window对象
    //整个程序中只有一个UIWindow对象
    //在程序基本上表示屏幕窗口
    //UIWindow也是继承自UIView，是一个特殊的UIView
    //UIScreen表示屏幕硬件表示类，mainSreen获得主屏幕设备信息
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //创建一个视图控制器，作为UIWindow的跟视图控制器
    self.window.rootViewController=[[UIViewController alloc]init];
    self.window.backgroundColor=[UIColor blueColor];
    
    UIView* view=[[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor=[UIColor redColor];
    
    UIView* backView=[[UIView alloc]initWithFrame:CGRectMake(0, 50, 240, 360)];
    backView.backgroundColor = [UIColor greenColor];
    //背景视图
    [backView addSubview:view];
    
    //将backView作为view的父视图.子视图的坐标的参考系是父视图的坐标
    [self.window addSubview:backView];
    

    
    //使window有效并显示到屏幕上
    [self.window makeKeyAndVisible];
    
    //这些window是同一个window
    //当子视图添加到父视图上时，子视图window会被父视图window赋值，打印输出的是window地址
    NSLog(@"%@",view.window);
    NSLog(@"%@",backView.window);
    NSLog(@"%@",self.window);

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
