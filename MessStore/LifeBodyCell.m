//
//  LifeBodyCell.m
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "LifeBodyCell.h"
#import "MSComment.h"
#import "LifeBodyItem.h"
#import "WeatherModel.h"

@implementation LifeBodyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.iconImage.layer.cornerRadius = 8;
    self.backgroundColor = MSCollectionBkgCollor;
//    NSError *error = 0;
//    //加载一个NSURL对象
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:WeatherUrl]];
//    NSData *response = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:nil error:nil];
//    NSDictionary *weatherDict = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
//    if (weatherDict == nil) {
//        NSLog(@"Json parse failed!");
//    }
//    NSDictionary *weatherInfo = [weatherDict objectForKey:@"weatherinfo"];
//    self.model = [[WeatherModel alloc]init];
//    _model.city = [weatherInfo  objectForKey:@"city"];
//    _model.cityid = [weatherInfo  objectForKey:@"cityid"];
//    _model.ptime = [weatherInfo  objectForKey:@"ptime"];
//    _model.temp1 = [weatherInfo  objectForKey:@"temp1"];
//    _model.temp2 = [weatherInfo  objectForKey:@"temp2"];
//    _model.weather = [weatherInfo  objectForKey:@"weather"];
//    _model.day = [weatherInfo  objectForKey:@"img2"];
//    _model.night = [weatherInfo  objectForKey:@"img1"];
//    
//    NSString *imageStr = [[NSString alloc] initWithFormat:@"%@%@",WeatherImageUrl ,_model.day];
//    NSURL *imageUrl = [NSURL URLWithString:imageStr];
//    NSData *imageData = [NSData dataWithContentsOfURL:imageUrl];
//    UIImage *dayImage = [UIImage imageWithData:imageData];
//    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:imageUrl];
//    NSData *imageData = [NSURLConnection sendSynchronousRequest:imageRequest returningResponse:nil error:nil];
//    UIImage *dayImage = [NSJSONSerialization JSONObjectWithData:imageData options:NSJSONReadingMutableLeaves error:&error];
//    _modedayy1 = dayImage;
    
}
//- (void)setItem:(LifeBodyItem *)item{
//    self.item = item;
//    self.iconImage.image = [UIImage imageNamed:item.icon];
//    self.titleLabel.text = item.title;
//}
- (void)setItem:(LifeBodyItem *)item
{
    _item = item;
    //self.iconImage.image = _model.day1;
    self.titleLabel.text = item.title;
    
}
@end
