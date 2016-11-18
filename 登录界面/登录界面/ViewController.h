//
//  ViewController.h
//  登录界面
//
//  Created by 王宇珍 on 16/11/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //登录界面的组成：
    //用户名提示：输入框
    //密码提示：密码输入框
    //登录按钮
    //注册按钮
    
    //用户名提示Label
    UILabel* _lbUserName;
    //密码提示Label
    UILabel* _lbPassword;
    
    //用户名输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassword;
    
    //登录按钮
    UIButton* _btlogin;
    //注册按钮
    UIButton* _btRegister;
    
}


@end

