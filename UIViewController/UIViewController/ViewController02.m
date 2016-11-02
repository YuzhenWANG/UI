//
//  ViewController02.m
//  UIViewController
//
//  Created by 王宇珍 on 16/11/1.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController02.h"

@interface ViewController02 ()

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //控制器二的颜色为橙色
    self.view.backgroundColor=[UIColor orangeColor];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //使当前的控制器消失掉
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
