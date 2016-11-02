//
//  ViewController.m
//  UIViewController
//
//  Created by 王宇珍 on 16/10/31.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"

@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时，调用此函数
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    ViewController02* vc=[[ViewController02 alloc]init];
    
    //显示一个新的视图控制器界面道屏幕
    [self presentViewController:vc animated:YES completion:nil];
}


//当视图控制器第一次被加载显示视图时，调用此函数
//一般用来布局初始化视图,初始化资源
- (void)viewDidLoad {
    //默认情况下调用父亲类的加载视图函数
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView* view=[[UIView alloc]init];
    view.frame=CGRectMake(100, 100, 100, 200);
    
    //将视图添加到当前控制视图上
    [self.view addSubview:view];
    
    view.backgroundColor=[UIColor orangeColor];
    self.view.backgroundColor=[UIColor blueColor];
    
    NSLog(@"viewDidLoad 第一次加载视图");
}


//当视图控制器的视图即将显示时，调用此函数
//视图分为：1 显示前(还没显示) 2 正在处于显示状态 3已经被隐藏(显示后)
//显示之前我们需要坐一些初始化工作，显示后需要做一些释放工作
//参数：表示是否有动画切换后显示
//每一次视图显示时都要被调用。不同于viewDidLoad只会加载一次
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear 视图即将显示");
}

//视图即将消失时，调用此函数
//当前的状态：视图还是显示在屏幕上的
-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDisappear 视图即将消失");
}


//视图已经显示到屏幕上的瞬间调用此函数
-(void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear 视图已经显示");
}

//当前视图已经从屏幕上消失
-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear 视图已经消失");
}

//当系统内存过低时，会发起警告信息，调用此函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"内存过低！");

}

@end
