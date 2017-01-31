//
//  LoopScrollImageView.h
//  lunbo
//
//  Created by zhangle on 17/1/14.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoopScrollImageView : UIView<UIScrollViewDelegate>
@property (nonatomic, retain) NSTimer * timer;

@property (nonatomic, retain) UIScrollView * scrollView;
@property (nonatomic, retain) UIPageControl * pageControl;
@property (nonatomic, retain) UILabel * currentPageLabel;

@property (nonatomic, retain) NSArray * dataSource;


- (id) initWithFrame:(CGRect)frame images:(NSArray *)images;

- (void) startTimer;
- (void) stopTimer;
@end
