//
//  VCRoot.m
//  XIB控件
//
//  Created by 王宇珍 on 16/11/20.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)pressLogin:(id)sender {
    
    NSLog(@"login");
}

- (IBAction)pressSignUp:(id)sender {
    NSLog(@"sign up");

}
@end
