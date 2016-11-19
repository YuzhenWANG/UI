//
//  ViewController.m
//  UITouch
//
//  Created by 王宇珍 on 16/11/19.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage* image=[UIImage imageNamed:@"3.JPG"];
    UIImageView* iView=[[UIImageView alloc]init];
    iView.image=image;
    
    iView.frame=CGRectMake(50, 100, 220,300);
    
    iView.tag=101;
    [self.view addSubview:iView];
    
}

//一次点击的过程：
//1. 手指触碰屏幕
//2. 手指接触屏幕且没有离开
//3. 手指离开屏幕的瞬间

//当点击屏幕开始的瞬间，调用此函数，即状态1
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"手指触碰瞬间");
    //获取点击对象。anyObeject获取任何一个点击对象
    //一般只有一个点击对象
    UITouch* touch=[touches anyObject];
    
    
    //记录点击的次数
    
    if(touch.tapCount==1)
        NSLog(@"单次点击");
    else if (touch.tapCount==2)
        NSLog(@"双击");
    
    
    _mPtList=[touch locationInView:self.view];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"手指在屏幕上, 并且移动。可以获取坐标数据");
    
    //获取手指相对当前视图的坐标
    UITouch* touch=[touches anyObject];
    CGPoint pt=[touch locationInView:self.view];
    
    //每次移动偏移量大小
    float xOffset=pt.x-_mPtList.x;
    float yOffset=pt.y-_mPtList.y;
    
    _mPtList=pt;
    
    
    UIImageView* iView=[self.view viewWithTag:101];
    
    NSLog(@"x=%f,y=%f",pt.x,pt.y);
    
    iView.frame=CGRectMake(iView.frame.origin.x+xOffset, iView.frame.origin.y+yOffset, iView.frame.size.width, iView.frame.size.height);
    
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"手指离开屏幕");
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"特殊情况下终端触屏.比如电话");
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
