//
//  XMGShop.m
//  _10-UIButtonPractice
//
//  Created by jack on 12/1/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "XMGShop.h"

@implementation XMGShop
-(instancetype)initWithIcon:(NSString*)icon name:(NSString*)name{
    if (self = [super init]) {
        self.icon = icon;
        self.name = name;
    }
    return self;
}
-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        self.icon = dict[@"icon"];
        self.name = dict[@"name"];
    }
    return self;
}
+(instancetype)shopWithIcon:(NSString*)icon name:(NSString*)name{
    return [[self alloc]initWithIcon:icon name:name];
}
+(instancetype)shopWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}
@end
