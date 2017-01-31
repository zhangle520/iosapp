//
//  Newdata.h
//  lunbo
//
//  Created by zhangle on 17/1/15.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseObject.h"

typedef NS_ENUM(NSUInteger, NewsType)
{
    NewsTypeStandardNews,
    NewsTypeSoftWare,
    NewsTypeQA,
    NewsTypeBlog
};

@interface Newdata : BaseObject
@property (nonatomic, assign) int64_t newsID;
@property (nonatomic, copy)   NSString *title;
@property (nonatomic, copy)   NSString *body;
@property (nonatomic, assign) int commentCount;
@property (nonatomic, copy)   NSString *author;
@property (nonatomic, assign) int64_t authorID;
@property (nonatomic, assign) NewsType type;
@property (nonatomic, strong) NSDate *pubDate;
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *eventURL;
@property (nonatomic, copy) NSString *attachment;
@property (nonatomic, assign) int64_t authorUID2;


@property (nonatomic, copy) NSURL *softwareLink;
@property (nonatomic, copy) NSString *softwareName;
@property (nonatomic, assign) BOOL isFavorite;
@property (nonatomic, strong) NSArray *relatives;

@end
