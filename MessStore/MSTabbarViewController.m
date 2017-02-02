//
//  MSTabbarViewController.m
//  MessStore
//
//  Created by zhangle on 17/1/31.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "MSTabbarViewController.h"
#import "LifeTableViewController.h"
#import "CSStickyHeaderFlowLayout.h"
#import "WeatherViewController.h";
@interface MSTabbarViewController ()

@end

@implementation MSTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 首页控制器
    // 创建布局
    CSStickyHeaderFlowLayout *layout = [[CSStickyHeaderFlowLayout alloc]init];
    // 设置cell尺寸
    layout.itemSize = CGSizeMake(80, 80);
    // 设置水平间距
    layout.minimumInteritemSpacing = 0;
    // 设置垂直间距
    layout.minimumLineSpacing = 10;
    layout.sectionInset = UIEdgeInsetsMake(10, 0, 0, 0);
    layout.parallaxHeaderReferenceSize = CGSizeMake(self.view.frame.size.width, 170);
    layout.headerReferenceSize = CGSizeMake(200, 50);
    LifeTableViewController *life = [[LifeTableViewController alloc] initWithCollectionViewLayout:layout];
    WeatherViewController *weather = [[WeatherViewController alloc] initWithStyle:UITableViewStylePlain];
    weather.navigationController.title = @"天气";
    [self addChildViewController:weather];
    [self addChildViewController:life];
    
    life.title = @"生活";
    weather.title = @"天气";
    
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
