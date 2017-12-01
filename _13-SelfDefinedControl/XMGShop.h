//
//  XMGShop.h
//  _10-UIButtonPractice
//
//  Created by jack on 12/1/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMGShopView.h"

@interface XMGShop : NSObject
@property(nonatomic, copy) NSString *icon;
@property(nonatomic, copy) NSString *name;
-(instancetype)initWithIcon:(NSString*)icon name:(NSString*)name;
-(instancetype)initWithDict:(NSDictionary*)dict;
+(instancetype)shopWithIcon:(NSString*)icon name:(NSString*)name;
+(instancetype)shopWithDict:(NSDictionary*)dict;
@end
