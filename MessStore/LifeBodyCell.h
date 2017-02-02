//
//  LifeBodyCell.h
//  MessStore
//
//  Created by zhangle on 17/2/1.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LifeBodyItem, WeatherModel;
@interface LifeBodyCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) WeatherModel *model;
@property (nonatomic, strong) LifeBodyItem *item;
@end
