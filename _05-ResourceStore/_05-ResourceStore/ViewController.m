//
//  ViewController.m
//  _05-ResourceStore
//
//  Created by jack on 11/29/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // solution 1
    self.imageView.image = [UIImage imageNamed:@"1"];
    
    // solution 2
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"];
//    self.imageView.image = [UIImage imageWithContentsOfFile:path];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
