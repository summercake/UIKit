//
//  XMGViewController.m
//  _10-UIButtonPractice
//
//  Created by jack on 11/30/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "XMGViewController.h"
#import "XMGShop.h"
#import "XMGShopView.h"

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
        // Dictionary to Model
        NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"dataArr.plist" ofType:nil];
        self.dataArr = [NSArray arrayWithContentsOfFile:dataPath];
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in self.dataArr) {
            XMGShop *shop = [XMGShop shopWithDict:dict];
            [tempArray addObject:shop];
        }
        self.dataArr = tempArray;
    }
    return _dataArr;
}

- (IBAction)add:(UIButton *)sender {
    self.num = self.ShoppingCart.subviews.count;
    
    //
    NSInteger allCols = 3;
    CGFloat width = 80;
    CGFloat height = 100;
    CGFloat hMargin = (self.ShoppingCart.frame.size.width - allCols * width) / (allCols -1);
    CGFloat vMargin = (self.ShoppingCart.frame.size.height - 2 * height) / 1;
    NSInteger index = self.ShoppingCart.subviews.count;
    CGFloat x = (hMargin + width) * (index % allCols);
    CGFloat y = (vMargin + height) * (index / allCols);
    
    // create product
    XMGShopView *shopView = [XMGShopView shopViewWithShop:self.dataArr[self.num]];
    shopView.frame = CGRectMake(x, y, width, height);
    [self.ShoppingCart addSubview:shopView];
    
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
