//
//  WeatherModel.h
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WeatherModel : NSObject

@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *cityid;
@property (nonatomic, copy) NSString *temp1;
@property (nonatomic, copy) NSString *temp2;
@property (nonatomic, copy) NSString *weather;
@property (nonatomic, copy) NSString *ptime;
@property (nonatomic, copy) NSString *day;
@property (nonatomic, copy) NSString *night;
@property (nonatomic, strong) UIImage *dImg1;
@property (nonatomic, strong) UIImage *nImg0;

- (WeatherModel *)getUrl:(NSString *)url;
@end
//{"weatherinfo":{"city":"鍖椾含","cityid":"101010100","temp1":"-2鈩�","temp2":"16鈩�","weather":"鏅�","img1":"n0.gif","img2":"d0.gif","ptime":"18:00"}}
