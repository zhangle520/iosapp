//
//  KLWeatherHttpTool.m
//  KnowingLife
//
//  Created by tanyang on 14/10/27.
//  Copyright (c) 2014年 tany. All rights reserved.
//

#import "KLSearchHttpTool.h"
#import "MSHttpTool.h"
#define baidukey @"Q0qFFiynCewS75iBPQ9TkChH"
@implementation KLSearchHttpTool


+ (void)getWeatherDataWithCity:(NSString *)city success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"location"] = city;
    params[@"ak"] = baidukey;
    params[@"output"] = @"json";
    
    // 发送请求
    [MSHttpTool getWithURL:@"http://api.map.baidu.com/telematics/v3/weather?" params:params success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
            NSLog(@"%@",error);
        }
    }];
}

+ (void)getIDCardData:(NSString *)IDcard success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"cardno"] = IDcard;
    params[@"dtype"] = @"json";
    params[@"key"] = @"ef931234525aecba56bb3cc16db65f80";
    
    
    // 发送请求
    [MSHttpTool getWithURL:@"http://apis.juhe.cn/idcard/index" params:params success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
            NSLog(@"%@",error);
        }
    }];
}

+ (void)getPhoneData:(NSString *)phone success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"phone"] = phone;
    params[@"key"] = @"fbe190dd9b4d9d9e1e60f846fea50113";
    params[@"dtype"] = @"json";
    
    // 发送请求
    [MSHttpTool getWithURL:@"http://apis.juhe.cn/mobile/get" params:params success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
            NSLog(@"%@",error);
        }
    }];

}

+ (void)getCurrencyDataWithFrom:(NSString *)from to:(NSString *)to success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"from"] = from;
    params[@"to"] = to;
    params[@"format"] = @"json";
    
    // 发送请求
    [MSHttpTool getWithURL:@"http://api.uihoo.com/currency/currency.http.php?" params:params success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
            NSLog(@"%@",error);
        }
    }];

}

+ (void)getDreamDataWithKey:(NSString *)dreamKey success:(void (^)(id json))success failure:(void (^)(NSError *error))failure
{
    NSString *dream = [dreamKey stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"key"] = @"93a29bda48fc9b8a6e4b38d773252adc";
    params[@"q"] = dream;
    params[@"cid"] = @"";
    params[@"full"] = @"1";
   
    
    // 发送请求
    [MSHttpTool getWithURL:@"http://v.juhe.cn/dream/query" params:params success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
            NSLog(@"%@",error);
        }
    }];
}

+ (void)getIPDataWithIP:(NSString *)IP success:(void (^)(id))success failure:(void (^)(NSError *))failure
{
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"ip"] = IP;
    params[@"key"] = @"9b8d6262f2398409aa13cdd6105725f2";
    params[@"dtype"] = @"json";
    
    // 发送请求
    [MSHttpTool getWithURL:@"http://apis.juhe.cn/ip/ip2addr" params:params success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
            NSLog(@"%@",error);
        }
    }];
}

@end
