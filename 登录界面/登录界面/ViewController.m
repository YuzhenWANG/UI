//
//  ViewController.m
//  登录界面
//
//  Created by 王宇珍 on 16/11/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    _lbUserName = [[UILabel alloc]init];
    _lbUserName.frame=CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"username";
    _lbUserName.font=[UIFont systemFontOfSize:20];
    _lbUserName.textAlignment=NSTextAlignmentLeft;
    
    

    //用户名密码提示
    _lbPassword=[[UILabel alloc]init];
    _lbPassword.frame=CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"password: ";
    _lbPassword.font=[UIFont systemFontOfSize:20];
    _lbPassword.textAlignment=NSTextAlignmentLeft;

    
    //用户名输入框
    _tfUserName=[[UITextField alloc]init];
    _tfUserName.frame=CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder=@"insert username";
    _tfUserName.borderStyle=UITextBorderStyleRoundedRect;
    
    
    //密码输入框
    _tfPassword=[[UITextField alloc]init];
    _tfPassword.frame=CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder=@"insert password";
    _tfPassword.borderStyle=UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry=YES;
    
    
    //登录和注册btn创建
    _btlogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btlogin.frame=CGRectMake(120, 300, 80, 40);
    [_btlogin setTitle:@"login" forState:UIControlStateNormal];
    [_btlogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame=CGRectMake(200, 300, 80, 40);
    [_btRegister setTitle:@"register" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:_btRegister];
    [self.view addSubview:_btlogin];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_lbUserName];

}


//登录事件函数。要判断用户名和密码是否正确
-(void)pressLogin
{
    NSString* strName=@"micheal";
    NSString* strPass=@"123456";
    
    //获取输入框中的内容
    NSString* strTextName = _tfUserName.text;
    NSString* strTextPass = _tfPassword.text;
    
    if ([strName isEqualToString:strTextName]&&[strPass isEqualToString:strTextPass]) {
        NSLog(@"用户名密码正确");
        
        UIAlertView* alView=[[UIAlertView alloc]initWithTitle:@"提示" message:@"验证成功，登陆成功" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        [alView show];
    }
    
    else
    {
        UIAlertView* alView1=[[UIAlertView alloc]initWithTitle:@"提示" message:@"用户名或密码错误" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles:nil];
        [alView1 show];
    }
    
    
}


//注册事件函数
-(void)pressRegister
{
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
