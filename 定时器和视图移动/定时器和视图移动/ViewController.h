//
//  ViewController.h
//  定时器和视图移动
//
//  Created by 王宇珍 on 16/11/14.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个定时器对象，可以在每隔固定时间发送一个消息，通过此消息来调用相应的时间函数
    //通过此函数可在固定时间段来完成一个根据时间间隔的任务
    NSTimer* _timerView;
    
}
//属性
@property(retain,nonatomic)NSTimer* timerView;

@end

