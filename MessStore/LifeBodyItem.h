//
//  LifeBodyItem.h
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LifeBodyItem : NSObject
// 标题
@property (nonatomic, copy) NSString *title;
// 图标
@property (nonatomic, copy) NSString *icon;
// 点击cell 运行的控制器
@property (nonatomic, strong) Class destVCClass;
// 点击cell 运行block
@property (nonatomic, copy) void (^selectionHandler)();

+ (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon;
+ (instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon destVCClass:(Class)destVCClass;
+(instancetype)initWithTitle:(NSString *)title icon:(NSString *)icon selectionHandler:(void (^)(id item))selectionHandler;
@end
