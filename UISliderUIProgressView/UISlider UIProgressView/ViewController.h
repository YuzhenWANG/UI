//
//  ViewController.h
//  UISlider UIProgressView
//
//  Created by 王宇珍 on 16/11/15.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条.用来表示下载、视频播放进度
    UIProgressView* _progressView;
    
    //滑动条，可以用来调整音量
    UISlider* _slider;
}

@property(retain,nonatomic) UIProgressView* pView;
@property(retain,nonatomic) UISlider* slider;

@end

