//
//  ViewController.m
//  _04-UIImageViewAnimation
//
//  Created by jack on 11/29/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startBtn:(id)sender {
    UIImageView *iv = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1"]];
    self.imageView = iv;
    self.imageView.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    NSMutableArray<UIImage *> *imageArr = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%d",i+1];
        UIImage *image = [UIImage imageNamed:imageName];
        [imageArr addObject:image];
    }
    self.imageView.animationImages = imageArr;
    self.imageView.animationRepeatCount = 0;
    self.imageView.animationDuration = 1.0;
    [self.view addSubview:self.imageView];
    [self.imageView startAnimating];
}
- (IBAction)stopBtn:(id)sender {
    [self.imageView stopAnimating];
}

@end
