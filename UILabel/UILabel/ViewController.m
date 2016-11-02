//
//  ViewController.m
//  UILabel
//
//  Created by 王宇珍 on 16/10/27.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件
-(void)createUI
{
    //定义并创建一个UI Label
    //UILabel可以显示在屏幕上的，并且可以显示文字的UI控件
    UILabel* label=[[UILabel alloc]init];
    
    label.text=@"hello world!bababababkkkkk";
    label.frame=CGRectMake(100, 150, 160, 90);
    label.backgroundColor=[UIColor redColor];
    [self.view addSubview:label];
    
    //设置字体大小颜色
    label.font=[UIFont systemFontOfSize:22];
    label.textColor=[UIColor blackColor];
    
    //设置阴影颜色
    label.shadowOffset=CGSizeMake(5, 10);
    label.shadowColor=[UIColor grayColor];
    
    //文字对齐方式
    label.textAlignment=NSTextAlignmentCenter;
    
    //文字显示行数，默认为1 如果值为0 即按需要显示
    label.numberOfLines=3;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
