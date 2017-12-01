//
//  XMGShopView.h
//  _10-UIButtonPractice
//
//  Created by jack on 12/1/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XMGShop;
@interface XMGShopView : UIView
//-(void)setIcon:(NSString*)icon;
//-(void)setName:(NSString*)name;
@property(nonatomic, strong)XMGShop *shop;
-(instancetype)initWithShop:(XMGShop*)shop;
+(instancetype)shopViewWithShop:(XMGShop*)shop;
@end
