//
//  ViewController.m
//  UITextField
//
//  Created by 王宇珍 on 16/11/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField=_textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个文本输入区域对象
    self.textField = [[UITextField alloc]init];
    self.textField.frame=CGRectMake(100, 100, 180, 40);
    
    //设置内容文字
    self.textField.text=@"user name";
    
    //设置字体格式
    self.textField.font=[UIFont systemFontOfSize:15];
    self.textField.textColor=[UIColor blackColor];
    
    //设置边框风格
    self.textField.borderStyle=UITextBorderStyleRoundedRect;
   // self.textField.borderStyle=UITextBorderStyleLine;
   // self.textField.borderStyle=UITextBorderStyleNone;
   // self.textField.borderStyle=UITextBorderStyleBezel;
    
    //设置虚拟键盘风格
    self.textField.keyboardType=UIKeyboardTypeDefault;
    
    //提示文字信息
    self.textField.placeholder=@"请输入用户名";
    
    
    //是否加密输入
    self.textField.secureTextEntry=NO;
    
    [self.view addSubview:self.textField];
    
    
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //点击屏幕空白处 收回键盘
    [self.textField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
