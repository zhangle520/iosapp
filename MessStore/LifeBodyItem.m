//
//  LifeBodyItem.m
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "LifeBodyItem.h"

@implementation LifeBodyItem
- (instancetype)init
{
    self = [super init];
    if (!self) {
        return nil;
    }
    return self;
}

+ (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon{
    return [[self alloc] initWithTitle:title icon:icon];
}
+ (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon destVCClass:(Class)destVCClass{
    return [[self alloc] initWithTitle:title icon:icon destVCClass:destVCClass];
}
+(instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon selectionHandler:(void (^)(id item))selectionHandler{
    return [[self alloc] initWithTitle:title icon:icon selectionHandler:selectionHandler];
}

- (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon{
    self = [self init];
    if (!self)
        return nil;
    self.title = title;
    self.icon = icon;
    return self;
    
}
- (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon destVCClass:(Class)destVCClass{
    self = [self initWithTitle:title icon:icon];
    if (!self)
        return nil;
    self.destVCClass = destVCClass;
    return self;
    
}
-(instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon selectionHandler:(void (^)(id item))selectionHandler{
    self = [self initWithTitle:title icon:icon];
    if (!self)
        return nil;
    self.selectionHandler = selectionHandler;
    return self;
}
@end
