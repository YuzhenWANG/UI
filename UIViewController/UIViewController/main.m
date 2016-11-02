//
//  main.m
//  UIViewController
//
//  Created by 王宇珍 on 16/10/31.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


//整个app程序的主函数，入口函数
int main(int argc, char * argv[]) {
    //自动内存释放池
    @autoreleasepool {
        
        //UIKit框架结构启动函数
        //参数一：argc 启动时带有参数的个数
        //参数二：argv 参数列表
        //参数三：要求传入一个主框架类类名，如果nil 系统自动用默认的框架类名
        //参数四：主框架的代理类对象名字 转成字符串 穿进去
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        //UIApplication通过苹果公司维护
    }
}
