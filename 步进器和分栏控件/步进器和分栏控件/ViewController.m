//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by 王宇珍 on 16/11/16.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性
@synthesize segControl = _segControl;
@synthesize stepper = _stepper;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建步进器对象
    _stepper=[[UIStepper alloc]init];
    _stepper.frame = CGRectMake(100, 100, 80, 40); //宽高不能变更
    
    _stepper.minimumValue=0;
    _stepper.maximumValue=100;
    _stepper.stepValue=5;
    _stepper.value=10;  //设置当前值，默认为0

    
    _stepper.tintColor=[UIColor yellowColor];
    _stepper.backgroundColor=[UIColor blackColor];
    
    //是否可以重复响应事件(按住➕能不能一直加，而且越来越快，还是需要松开再按)
    _stepper.autorepeat=YES;
    //是否将步进结果通过事件函数每一次都响应出来
    _stepper.continuous=YES;
    
    
    //添加事件函数
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    
    
    
    
    
    
    
    //创建分栏控件
    _segControl=[[UISegmentedControl alloc]init];
    _segControl.frame=CGRectMake(10, 200, 300, 40); //宽度可变，高度不可变
    
    //添加两个个按钮元素
    [_segControl insertSegmentWithTitle:@"0 dollar" atIndex:0 animated:NO];
    [_segControl insertSegmentWithTitle:@"5 dollar" atIndex:1 animated:NO];
    //当前默认按钮索引设置
    _segControl.selectedSegmentIndex=0;
    
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    
    _segControl.tintColor=[UIColor orangeColor];
    _segControl.backgroundColor=[UIColor yellowColor];
    
    [self.view addSubview:_segControl];
    
    
}


-(void)stepChange
{
    NSLog(@"value=%f",_stepper.value);
}


-(void)segChange
{
    NSLog(@"%d",_segControl.selectedSegmentIndex);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
