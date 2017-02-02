//
//  LifeSection.h
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LifeSection : NSObject
// 头部标题
@property (nonatomic, copy) NSString *headTitle;
@property (nonatomic, copy) NSString *footTitle;

// 存放item的数组
@property (nonatomic, strong) NSMutableArray *items;
+ (instancetype)section;
@end
