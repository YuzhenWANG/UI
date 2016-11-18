//
//  ViewController.m
//  UIScrollView
//
//  Created by 王宇珍 on 16/11/18.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个滚动视图，可以对视图内内容进行滚屏查看功能
    UIScrollView* sv=[[UIScrollView alloc]init];
    sv.frame=CGRectMake(0, 0, 320, 576);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled=YES;
    //是否可以开启滚动效果
    sv.scrollEnabled=YES;
    //设置画布的大小，画布显示在滚动视图内。一般大于frame
    sv.contentSize=CGSizeMake(320*5, 576);
    //是否边缘弹动
    sv.bounces=YES;
    sv.alwaysBounceHorizontal=YES;
    sv.alwaysBounceVertical=YES;
    //是否显示滚动条
    sv.showsHorizontalScrollIndicator=YES;
    sv.showsVerticalScrollIndicator=YES;
    
    
    sv.backgroundColor=[UIColor yellowColor];
    
    for (int i=0; i<3; i++) {
        NSString* strName=[NSString stringWithFormat:@"%d.jpg",i+1];
        
        UIImage* image=[UIImage imageNamed:strName];
        
        UIImageView* iView=[[UIImageView alloc]initWithImage:image];
        
        iView.frame=CGRectMake(320*i,0, 320, 576);
        
        [sv addSubview:iView];
        
        
    }
    
    [self.view addSubview:sv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
