//
//  WeatherModel.m
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "WeatherModel.h"
#import "MSComment.h"

@implementation WeatherModel
- (instancetype)init{
    self = [super init];
    if (!self) {
//        NSError *error = 0;
//        //加载一个NSURL对象
//        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:WeatherUrl]];
//        NSData *response = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:nil error:nil];
//        NSDictionary *weatherDict = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
//        if (weatherDict == nil) {
//            NSLog(@"Json parse failed!");
//            return nil;
//        }
        return nil;
    }
    return self;
}
- (instancetype)getUrl:(NSString *)url{
            NSError *error = 0;
            //加载一个NSURL对象
            NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
            NSData *response = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:nil error:nil];
            NSDictionary *weatherDict = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
            if (weatherDict == nil) {
                NSLog(@"Json parse failed!");
                return nil;
            }
    NSDictionary *weatherInfo = [weatherDict objectForKey:@"weatherinfo"];
    self.city = [weatherInfo  objectForKey:@"city"];
    self.cityid = [weatherInfo  objectForKey:@"cityid"];
    self.ptime = [weatherInfo  objectForKey:@"ptime"];
    self.temp1 = [weatherInfo  objectForKey:@"temp1"];
    self.temp2 = [weatherInfo  objectForKey:@"temp2"];
    self.weather = [weatherInfo  objectForKey:@"weather"];
    self.day = [weatherInfo  objectForKey:@"img2"];
    self.night = [weatherInfo  objectForKey:@"img1"];
    //获取天气图片
    NSString *imageStr0 = [[NSString alloc] initWithFormat:@"%@%@",WeatherImageUrl ,self.day];
    NSString *imageStr1 = [[NSString alloc] initWithFormat:@"%@%@",WeatherImageUrl ,self.night];
    self.dImg1 = [self getWeatherImage:imageStr0];
    self.nImg0 = [self getWeatherImage:imageStr1];
    return self;

}
- (UIImage *)getWeatherImage:(NSString *)imageStr{
    NSURL *imageUrl = [NSURL URLWithString:imageStr];
    NSData *imageData = [NSData dataWithContentsOfURL:imageUrl];
    UIImage *weatherImage = [UIImage imageWithData:imageData];
    return weatherImage;
}


@end
