//
//  WeatherTableViewCell.m
//  MessStore
//
//  Created by zhangle on 17/2/2.
//  Copyright © 2017年 MissZhang. All rights reserved.
//

#import "WeatherTableViewCell.h"
#import "WeatherModel.h"

@interface WeatherTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *city;
@property (weak, nonatomic) IBOutlet UILabel *weather;
@property (weak, nonatomic) IBOutlet UILabel *temp;

@property (weak, nonatomic) IBOutlet UILabel *ptime;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@end
@implementation WeatherTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setLayOut];
}
- (void)initWithModel:(WeatherModel *)model{
    self.city.text = model.city;
    self.weather.text = model.weather;
    self.temp.text = [NSString stringWithFormat:@"%@~%@", model.temp1, model.temp2];
    self.ptime.text = model.ptime;
    self.image.image = model.dImg1;
    
    
}
- (void)setLayOut{
    for (UIView *view in self.contentView.subviews) {
        view.translatesAutoresizingMaskIntoConstraints = NO;
    }
//    NSDictionary *dict = NSDictionaryOfVariableBindings(_city, _weather, _temp, _ptime, _image);
//    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-8-[_weather]-6-[_temp]" options:NSLayoutFormatAlignAllLeft metrics:nil views:dict]];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
