//
//  ViewController.m
//  UIButton
//
//  Created by 王宇珍 on 16/10/27.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)creatRectButton
{
    //通过类方法来创建 圆角按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame=CGRectMake(100, 100, 100, 40);
    
    //设置按钮文字内容
    [btn setTitle:@"button1" forState:UIControlStateNormal]; //正常状态
    [btn setTitle:@"press button" forState:UIControlStateHighlighted]; //按下状态
    //设置文字颜色
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    //设置风格颜色
    [btn setTintColor:[UIColor whiteColor]];
    //设置文字大小
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    
    //设置按钮背景颜色
    btn.backgroundColor=[UIColor grayColor];
    
    //按钮事件
    
    //向按钮添加事件函数 UIControlEvent--事件处理函数类型  TouchUpInside--按钮弹起 并光标离开位置在按钮范围内
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
    btn.tag=101; //设置按钮标记值 除指针外也可以通过tag区分
    
    
    
    //添加到视图中并显示
    [self.view addSubview:btn];
    
}


-(void)pressBtn{
    NSLog(@"@button pressed");
}


//可以显示图片的按钮
-(void)createImgBtn{
    //创建一个自定义类型
    UIButton* btnImage=[UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame=CGRectMake(100, 300, 50, 50);
    UIImage* icon01=[UIImage imageNamed:@"1.jpeg"];
    UIImage* icon02=[UIImage imageNamed:@"2.jpeg"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self creatRectButton];
    [self createImgBtn];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
