//
//  ViewController.m
//  UISlider UIProgressView
//
//  Created by 王宇珍 on 16/11/15.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider;
@synthesize pView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _progressView = [[UIProgressView alloc]init];
    _progressView.frame=CGRectMake(50, 100, 200, 40); //位置可变，进度条高度不可变
    
    //设置风格颜色
    _progressView.progressTintColor = [UIColor redColor];
    _progressView.trackTintColor=[UIColor blackColor];
    
    
    //设置风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    //设置进度条范围，从0-1
    _progressView.progress=0.5;
    
    
    
    [self.view addSubview:_progressView];
    
    
    _slider=[[UISlider alloc]init];
    _slider.frame=CGRectMake(200, 50, 100, 40); //高度不可改
    
    //设置范围
    _slider.maximumValue=100;
    _slider.minimumValue=0; //可以是负的
    _slider.value=50;
    
    //整体风格颜色
    _slider.tintColor = [UIColor greenColor];
    //左侧颜色
    _slider.minimumTrackTintColor=[UIColor redColor];
    //右侧颜色
    _slider.maximumTrackTintColor=[UIColor blackColor];
    //滑块颜色
    _slider.thumbTintColor=[UIColor yellowColor];
    
    [self.view addSubview:_slider];
    
    //添加事件函数
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    
    
    
}


-(void)pressSlider
{
    _progressView.progress=_slider.value/100;  //进度条和滑动条同步变化
    NSLog(@"value=%f",_slider.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
