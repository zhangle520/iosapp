//
//  BaseObject.h
//  lunbo
//
//  Created by zhangle on 17/1/15.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <Ono.h>
//#import <TBXML.h>
//#import "NSDate+Comment.h"
@class ONOXMLElement, TBXMLElement;
@interface BaseObject : NSObject
//两种框架的解析方式
- (instancetype)initWithXML:(ONOXMLElement *)xml;

- (instancetype)initWithTBXMLElement:(TBXMLElement*)element;
@end
