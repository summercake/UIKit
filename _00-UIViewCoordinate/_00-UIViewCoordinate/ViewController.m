//
//  ViewController.m
//  _00-UIViewCoordinate
//
//  Created by jack on 11/28/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, weak) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *lb = [[UILabel alloc]init];
    lb.frame = CGRectMake(100, 100, 160, 40);
    lb.backgroundColor = [UIColor yellowColor];
    lb.text = @"I love you!!!";
    lb.textAlignment = NSTextAlignmentCenter;
    lb.textColor = [UIColor redColor];
    lb.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:lb];
    self.label = lb;
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)bounds:(id)sender {
    self.label.bounds = CGRectMake(100, 100, 200, 80);
}
- (IBAction)center:(id)sender {
//    self.label.center = CGPointMake(200, 200);
    self.label.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
}
- (IBAction)changeSizePosition:(id)sender {
//    self.label.frame = CGRectMake(60, 200, 200, 100);
    CGRect frame = self.label.frame;
    frame.origin.x -= 100;
    frame.origin.y -= 100;
    frame.size.width += 50;
    frame.size.height += 50;
    self.label.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
