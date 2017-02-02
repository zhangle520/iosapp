//
//  WeatherTableViewCell.h
//  MessStore
//
//  Created by zhangle on 17/2/2.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WeatherModel;
@interface WeatherTableViewCell : UITableViewCell
- (void)initWithModel:(WeatherModel *)model;
@end
