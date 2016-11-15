//
//  ViewController.m
//  UISwitch
//
//  Created by 王宇珍 on 16/11/14.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个开关对象，继承于UIView的
    _mySwitch = [[UISwitch alloc]init];
    _mySwitch.frame=CGRectMake(100, 100, 80, 40); //宽高无法改变
    
    //两种方法开关状态设置属性，YES：开启。NO：关闭
    _mySwitch.on=YES; //点语法
    [_mySwitch setOn:YES]; //set函数
    
    //参数一：状态设置
    //参数二：是否开启动画
    [_mySwitch setOn:YES animated:YES];
    
    [self.view addSubview:_mySwitch];
    
    
    //设置开关颜色，默认为绿色
    [_mySwitch setOnTintColor:[UIColor purpleColor]];
    //设置开关小圆钮颜色
    [_mySwitch setThumbTintColor:[UIColor blueColor]];
    //设置整体风格类型
    [_mySwitch setTintColor:[UIColor orangeColor]];
    
    
    //向开关控件添加事件函数
    //参数一：函数实现对象
    //参数二：函数体
    //参数三：事件响应时的事件类型  UIControlEventValueChanged：状态发生变化,即从开到关或者从关到开
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
    
}

//参数传入就是开关本身 可以用来判断开关状态
-(void)swChange:(UISwitch*) sw
{
    if (sw.on == YES) {
        NSLog(@"open");
    }
    NSLog(@"blabla");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
