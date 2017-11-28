//
//  ViewController.m
//  00-UIViewMethods
//
//  Created by jack on 11/28/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) UIView *redView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.5 using tag to get view
    UIView *redView = [self.view viewWithTag:1];
    self.redView = redView;

    // 1.1 create control object
    UISwitch *sw = [[UISwitch alloc]init];
    UISwitch *sw1 = [[UISwitch alloc]init];
    UISegmentedControl *sg = [[UISegmentedControl alloc]initWithItems:@[@"hahaha", @"hehehehe", @"hohoho"]];
    
    // 1.2 add control object to views
    [self.view addSubview:sw];
    [redView addSubview:sw1];
    [redView addSubview:sg];
    
    // 1.3 remove control object from views
//    [sg removeFromSuperview];
//    [self.redView removeFromSuperview];
//    [sw removeFromSuperview];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    // 1.4 remove view from UIWindow
//    [self.view removeFromSuperview];
}
- (IBAction)remove:(id)sender {
    [self.redView removeFromSuperview];
}

@end
