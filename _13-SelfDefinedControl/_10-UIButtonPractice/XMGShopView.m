//
//  XMGShopView.m
//  _10-UIButtonPractice
//
//  Created by jack on 12/1/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "XMGShopView.h"
#import "XMGShop.h"

@interface XMGShopView()
@property(nonatomic, weak)UIImageView *iconView;
@property(nonatomic, weak)UILabel *titleLabel;

@end

@implementation XMGShopView
-(instancetype)init{
    if (self = [super init]) {
        [self setUp];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    self.iconView.frame = CGRectMake(0, 0, width, width);
    self.titleLabel.frame = CGRectMake(0, width, width, height - width);
}
-(void)setShop:(XMGShop*)shop{
    _shop = shop;
    self.iconView.image = [UIImage imageNamed:shop.icon];
    self.titleLabel.text = shop.name;
}
-(instancetype)initWithShop:(XMGShop *)shop{
    if (self = [super init]) {
        [self setUp];
        self.shop = shop;
    }
    return self;
}
+(instancetype)shopViewWithShop:(XMGShop*)shop{
    return [[self alloc]initWithShop:shop];
}
-(void)setUp{
    // create product image view
    UIImageView *iconView = [[UIImageView alloc]init];
    iconView.backgroundColor = [UIColor redColor];
    [self addSubview:iconView];
    _iconView = iconView;
    
    // create product title label
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.backgroundColor = [UIColor yellowColor];
    [self addSubview:titleLabel];
    _titleLabel = titleLabel;
}
@end
