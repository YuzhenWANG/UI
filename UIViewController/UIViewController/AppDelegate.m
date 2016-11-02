//
//  AppDelegate.m
//  UIViewController
//
//  Created by 王宇珍 on 16/10/31.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    //以下过程封装在info.plist中的Main storyboard file based on name文件
    
    //创建一个window对象，属于AppDelegate属性
    //UIScreen表示屏幕硬件类，mainScreen获得主屏幕信息。
    //获得当前手机屏幕的大小尺寸
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建视图控制器对象
    ViewController* vcRoot=[[ViewController alloc]init];
    
    //对窗口的根视图控制器进行赋值操作.必须在程序启动前对跟视图控制器赋值
    //整个UIKit框架中只有一个根视图控制器，属于window的属性
    //视图控制器用来管理界面和处理界面逻辑的类对象
    self.window.rootViewController=vcRoot;
    
    //将window作为主视图并且显示出来
    [self.window makeKeyAndVisible];
    
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
