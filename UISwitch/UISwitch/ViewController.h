//
//  ViewController.h
//  UISwitch
//
//  Created by 王宇珍 on 16/11/14.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个开关控件
    //可以进行状态的改变 两种状态：开、关 可以切换
    //所有UIKit框架库中的控件均以UI开头
    UISwitch* _mySwitch;
}


@property(retain,nonatomic) UISwitch* mySwitch;
@end

