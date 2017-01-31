//
//  BaseObject.m
//  lunbo
//
//  Created by zhangle on 17/1/15.
//  Copyright © 2017年 yunva. All rights reserved.
//

#import "BaseObject.h"

@implementation BaseObject
- (instancetype)initWithXML:(ONOXMLElement *)xml
{
    NSAssert(false, @"Over ride in subclasses");
    return nil;
}

- (instancetype)initWithTBXMLElement:(TBXMLElement*)element {
    NSAssert(false, @"Over ride in TBXML subclasses");
    return nil;
}
@end
