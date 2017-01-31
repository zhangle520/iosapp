//
//  Utils.m
//  lunbo
//
//  Created by zhangle on 17/1/15.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import "Utils.h"

@implementation Utils
+ (MBProgressHUD *)createHUD
{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:window];
    HUD.detailsLabel.font = [UIFont boldSystemFontOfSize:16];
    [window addSubview:HUD];
    [HUD showAnimated:YES];
    HUD.removeFromSuperViewOnHide = YES;
    //[HUD addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:HUD action:@selector(hide:)]];
    
    return HUD;
}
-(void)someelse{
     [self.btnCooking addTarget:self action:@selector(pressCooking:) forControlEvents:UIControlEventTouchUpInside];
}
@end
