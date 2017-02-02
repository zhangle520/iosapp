//
//  LifeSection.m
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "LifeSection.h"

@implementation LifeSection
+ (instancetype)section{
    return [[self alloc] init];
}
- (instancetype)init{
    self = [super init];
    if (self) {
        self.items = [NSMutableArray array];
    }
    return self;
}
@end
