//
//  ViewController.m
//  00-UIViewProperties
//
//  Created by jack on 11/27/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView *greenView;
@property (nonatomic, readonly) UIView *superview;
@property (nonatomic, readonly, copy) NSArray *subviews;
@property (nonatomic) NSInteger tag;
@property (nonatomic) CGAffineTransform transform;
@property (nonatomic, strong) NSMutableArray *dataArr;
@end

@implementation ViewController
-(void)loadView{
    [super loadView];
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad { // ---------------------------> initialize controls after load view
    [super viewDidLoad];
    NSLog(@"%s",__func__);
    NSLog(@"\nbase control of greenControl : \n%@ \nself control : \n%@ \nsubview : \n%@", self.greenView.superview, self.view, self.greenView.subviews);
    NSLog(@"\nsubviews of self view : \n%@", self.view.subviews);
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"ViewDidAppear : \n%@", self.view.superview);
}

- (void)didReceiveMemoryWarning { // --------------> call this method, when controller receive warning info
                                  // --------------> remove unnecessary memory
    [super didReceiveMemoryWarning];
//    NSLog(@"%s",__func__);
    // Dispose of any resources that can be recreated.
}

-(void)test{
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 10000000; i++) {
        UILabel *label = [[UILabel alloc]init];
        [arr addObject:label];
    }
    self.dataArr = arr;
}
@end
