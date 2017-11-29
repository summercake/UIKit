//
//  ViewController.m
//  _02-UIImageViewFrame
//
//  Created by jack on 11/29/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // solution 1
//    UIImageView *imageView = [[UIImageView alloc]init];
//    imageView.image = [UIImage imageNamed:@"1"];
//    //    imageView.frame =CGRectMake(100, 100, 80, 200);
//    imageView.frame = (CGRect){{100,100},{267, 400}};
    
    // solution 2
//    UIImageView *imageView = [[UIImageView alloc]init];
//    UIImage *img = [UIImage imageNamed:@"1"];
//    imageView.frame = CGRectMake(0, 0, img.size.width, img.size.height);
//    imageView.image = img;
    
    // solution 3
//    UIImage *img = [UIImage imageNamed:@"1"];
//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, img.size.width, img.size.height)];
//    imageView.image = img;
    
    // solution 4
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1"]];
    
//    imageView.center = CGPointMake(200, 1);
    imageView.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    
    
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
