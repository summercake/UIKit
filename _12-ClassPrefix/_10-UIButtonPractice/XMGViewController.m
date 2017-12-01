//
//  XMGViewController.m
//  _10-UIButtonPractice
//
//  Created by jack on 11/30/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "XMGViewController.h"
#import "XMGShop.h"

@interface XMGViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ShoppingCart;
@property (nonatomic) NSInteger num;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *removeButton;
@property (nonatomic, strong) NSArray *dataArr;
@end

@implementation XMGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.num = 0;
}

-(NSArray*)dataArr{
    // lazy load
    // 1. when it will be use, it is loaded
    // 2. it only can be loaded one time globally
    // 3. it can be used in global range
    if (_dataArr == nil) {
        /*
        self.dataArr = @[
                         @{@"name":@"danjianbao", @"icon":@"danjianbao"},
                         @{@"name":@"qianbao", @"icon":@"qianbao"},
                         @{@"name":@"shoutibao", @"icon":@"shoutibao"},
                         @{@"name":@"shuangjianbao", @"icon":@"shuangjianbao"},
                         @{@"name":@"xiekuabao", @"icon":@"xiekuabao"},
                         @{@"name":@"liantiaobao", @"icon":@"liantiaobao"}];
         */
        
        // Dictionary to Model
        NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"dataArr.plist" ofType:nil];
        self.dataArr = [NSArray arrayWithContentsOfFile:dataPath];
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in self.dataArr) {
//            XMGShop *shop = [[XMGShop alloc]initWithIcon:dict[@"icon"] name:dict[@"name"]];
//            XMGShop *shop = [XMGShop shopWithIcon:dict[@"icon"] name:dict[@"name"]];
//            shop.name = dict[@"name"];
//            shop.icon = dict[@"icon"];
            XMGShop *shop = [XMGShop shopWithDict:dict];
            [tempArray addObject:shop];
        }
        self.dataArr = tempArray;
    }
    return _dataArr;
}

- (IBAction)add:(UIButton *)sender {
    self.num = self.ShoppingCart.subviews.count;
    // create view
    UIView *shopView = [[UIView alloc]init];
    if (self.num < 3) {
        shopView.frame = CGRectMake(self.num * 90, 0, 80, 100);
        shopView.backgroundColor = [UIColor greenColor];
    }else if(self.num >=3 && self.num < 6 ){
        shopView.frame = CGRectMake((self.num-3) * 90, 110, 80, 100);
        shopView.backgroundColor = [UIColor greenColor];
    }else if(self.num >=6 && self.num < 9){
        shopView.frame = CGRectMake((self.num-6) * 90, 220, 80, 100);
        shopView.backgroundColor = [UIColor greenColor];
    }else{
        return;
    }
    
    [self.ShoppingCart addSubview:shopView];
    
    // create product image view
    UIImageView *iconView = [[UIImageView alloc]init];
    iconView.frame = CGRectMake(0, 0, shopView.frame.size.width, shopView.frame.size.width);
    iconView.backgroundColor = [UIColor redColor];
    [shopView addSubview:iconView];
    
    // create product title label
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.frame = CGRectMake(0, shopView.frame.size.width, shopView.frame.size.width, shopView.frame.size.width-shopView.frame.size.height);
    titleLabel.backgroundColor = [UIColor yellowColor];
    [shopView addSubview:titleLabel];
    
    // create product content
    // bad code
    /*
     if (self.num == 0) {
     iconView.image = [UIImage imageNamed:@"danjianbao"];
     titleLabel.text = @"danjianbao";
     titleLabel.textAlignment = NSTextAlignmentCenter;
     }else if(self.num == 1){
     iconView.image = [UIImage imageNamed:@"qianbao"];
     titleLabel.text = @"qianbao";
     titleLabel.textAlignment = NSTextAlignmentCenter;
     }else if(self.num == 2){
     iconView.image = [UIImage imageNamed:@"shoutibao"];
     titleLabel.text = @"shoutibao";
     titleLabel.textAlignment = NSTextAlignmentCenter;
     }else if(self.num == 3){
     iconView.image = [UIImage imageNamed:@"shuangjianbao"];
     titleLabel.text = @"shuangjianbao";
     titleLabel.textAlignment = NSTextAlignmentCenter;
     }else if(self.num == 4){
     iconView.image = [UIImage imageNamed:@"xiekuabao"];
     titleLabel.text = @"xiekuabao";
     titleLabel.textAlignment = NSTextAlignmentCenter;
     }else if(self.num == 5){
     iconView.image = [UIImage imageNamed:@"liantiaobao"];
     titleLabel.text = @"liantiaobao";
     titleLabel.textAlignment = NSTextAlignmentCenter;
     }
     */
    
    // good code
    /*
     NSArray *names = @[@"danjianbao", @"qianbao", @"shoutibao", @"shuangjianbao", @"xiekuabao", @"liantiaobao"];
     iconView.image = [UIImage imageNamed:names[self.num]];
     titleLabel.text = names[self.num];
     titleLabel.textAlignment = NSTextAlignmentCenter;
     */
    
    // good code
//    NSDictionary *dict = self.dataArr[self.num];
    XMGShop *shop = self.dataArr[self.num];
    iconView.image = [UIImage imageNamed:shop.icon];
    titleLabel.text = shop.name;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    
//    [self.dataArr writeToFile:@"/Users/jack/Desktop/dataArr.plist" atomically:YES];
    
    if (self.num == 5) {
        self.addButton.enabled = NO;
    }
    self.removeButton.enabled = YES;
}

- (IBAction)remove:(UIButton *)sender {
    UIView *lastShopView = [self.ShoppingCart.subviews lastObject];
    [lastShopView removeFromSuperview];
    self.addButton.enabled = YES;
    self.removeButton.enabled = (self.ShoppingCart.subviews.count != 0);
}

@end
