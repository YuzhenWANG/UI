//
//  ViewController.h
//  UITextField
//
//  Created by 王宇珍 on 16/11/17.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    //定义一个文本输入区域
    //只能输入单行文字
    UITextField* _textField;
}

//定义属性
@property(retain, nonatomic)UITextField* textField;

@end

