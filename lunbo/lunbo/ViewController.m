//
//  ViewController.m
//  lunbo
//
//  Created by zhangle on 17/1/14.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import "ViewController.h"
#import "LoopScrollImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UIImage自动轮播";
    
    NSArray *  imageDataSource = [NSArray arrayWithObjects:@"account_place_holder@2x", @"detailViewDefaultGaussImage@2x", @"touxiang@2x", @"account_place_holder@2x", @"touxiang@2x",nil];
    // 只需初始化就可以实现效果
    LoopScrollImageView * loopScrollImageView =[[LoopScrollImageView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 130) images:imageDataSource];
    [self.view addSubview:loopScrollImageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
