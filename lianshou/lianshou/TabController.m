//
//  TabController.m
//  lianshou
//
//  Created by zhangle on 17/2/3.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "TabController.h"
#import "FirstController.h"

@interface TabController ()

@end

@implementation TabController

- (void)viewDidLoad {
    [super viewDidLoad];
    FirstController *first = [[FirstController alloc]initWithStyle:UITableViewStylePlain];
    UINavigationController *firstVC = [[UINavigationController alloc] initWithRootViewController:first];
    [self addChildViewController:firstVC];
    first.title = @"首页";
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
