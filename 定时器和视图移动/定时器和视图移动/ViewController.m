//
//  ViewController.m
//  定时器和视图移动
//
//  Created by 王宇珍 on 16/11/14.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量的同步
//内部使用成员变量，外部使用属性
@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"start time" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame=CGRectMake(100, 200, 80, 40);
    [btnStop setTitle:@"stop time" forState:UIControlStateNormal];
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:btnStop];
    
    //再添加一个视图，可以随着定时器移动
    UIView* view=[[UIView alloc]init];
    view.frame=CGRectMake(0, 0, 80, 80);
    view.backgroundColor=[UIColor orangeColor];
    [self.view addSubview:view];
    //设置view的标签值
    //通过父亲视图对象以及view的标签值可以获得相应的视图对象
    view.tag=101;

}

//实现按下按钮后的功能。使用定时器
-(void)pressStart
{
    //通过NSTimer的类方法创建一个定时器，并且启动这个定时器
    //参数1：每隔多长时间调用定时器函数，s为单位
    //参数2：表示实现定时器函数的对象（指针）
    //参数3：表示定时器函数对象
    //参数4：可以传入定时器函数中一个参数，nil代表无参数。注意要是有参数，函数名后要加个冒号
    //参数5：定时器是否重复调用函数操作 比如闹钟 只响一次和每周响一次
    //这个方法的返回值为一个新建好的定时器对象
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer:) userInfo:@"mary" repeats:YES];
    
    
}

//定时器函数
-(void)updateTimer:(NSTimer*) timer
{
    NSLog(@"test");
    NSLog(@"%@",timer.userInfo);
    //最好tag从100开始，防止冲突
    UIView* view=[self.view viewWithTag:101];
    view.frame=CGRectMake(view.frame.origin.x+5, view.frame.origin.y+5, 80, 80);
}


-(void)pressStop
{
    //通过返回值停止定时器
    if(_timerView != nil)
    {
        //使该定时器失效
        [_timerView invalidate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
