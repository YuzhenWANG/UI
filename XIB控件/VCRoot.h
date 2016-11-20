//
//  VCRoot.h
//  XIB控件
//
//  Created by 王宇珍 on 16/11/20.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController

//使用XIB创建UILabel属性
@property (weak, nonatomic) IBOutlet UILabel *mUserMame;

@property (weak, nonatomic) IBOutlet UILabel *mUserPassword;

@property (weak, nonatomic) IBOutlet UITextField *mTFUserName;

@property (weak, nonatomic) IBOutlet UITextField *mTFPassword;

@property (weak, nonatomic) IBOutlet UIButton *mBTLogin;

@property (weak, nonatomic) IBOutlet UIButton *mBTSignUp;


//按钮事件函数
- (IBAction)pressLogin:(id)sender;


- (IBAction)pressSignUp:(id)sender;

@end
