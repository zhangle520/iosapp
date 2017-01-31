//
//  Cell.m
//  lunbo
//
//  Created by zhangle on 17/1/15.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import "Cell.h"

@implementation Cell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self initSubview];
        [self setLayout];
    }
    return self;
}
- (void)initSubview{
    self.titleLabel = [UILabel new];
    self.titleLabel.numberOfLines = 0;//文本最多行数，为0时没有最大行数限制
    self.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    [self.contentView addSubview:self.titleLabel];
    
    self.bodyLabel = [UILabel new];
    self.bodyLabel.numberOfLines = 0;
    self.bodyLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.bodyLabel.font = [UIFont systemFontOfSize:13];
    self.bodyLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.bodyLabel];
    
    self.authorLabel = [UILabel new];
    self.authorLabel.font = [UIFont systemFontOfSize:12];
    self.authorLabel.textColor = [UIColor greenColor];
    [self.contentView addSubview:self.authorLabel];
    
    self.timeLabel = [UILabel new];
    self.timeLabel.font = [UIFont systemFontOfSize:12];
    self.timeLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.timeLabel];
    
    self.commentCount = [UILabel new];
    self.commentCount.font = [UIFont systemFontOfSize:12];
    self.commentCount.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.commentCount];
}

//遍历每个subview
- (void)setLayout{
    for (UIView *view in self.contentView.subviews) {
        view.translatesAutoresizingMaskIntoConstraints = NO;
    }
    NSDictionary *dictview = NSDictionaryOfVariableBindings(_titleLabel, _bodyLabel, _authorLabel, _timeLabel, _commentCount);
    //默认为水平方向
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-8-[_titleLabel]-5-[_bodyLabel]" options:NSLayoutFormatAlignAllLeft|NSLayoutFormatAlignAllRight metrics:nil views:dictview]];
    
}
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
