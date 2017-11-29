//
//  ViewController.m
//  _03-UIImageView
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
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.backgroundColor = [UIColor grayColor];
//    imageView.image = [UIImage imageNamed:@"maxresdefault"];
    imageView.image = [UIImage imageNamed:@"pq3KFVL"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
//    imageView.contentMode = UIViewContentModeRedraw;
    
    // add blur effects
    UIToolbar *toolBar = [[UIToolbar alloc]init];
    toolBar.frame = imageView.bounds;
//    toolBar.barStyle = UIBarStyleBlack;
    toolBar.alpha = 0.8;
    [imageView addSubview:toolBar];
    
    
    
    /*
     typedef NS_ENUM(NSInteger, UIViewContentMode) {
     UIViewContentModeScaleToFill,
     UIViewContentModeScaleAspectFit,      // contents scaled to fit with fixed aspect. remainder is transparent
     UIViewContentModeScaleAspectFill,     // contents scaled to fill with fixed aspect. some portion of content may be clipped.
     UIViewContentModeRedraw,              // redraw on bounds change (calls -setNeedsDisplay)
     UIViewContentModeCenter,              // contents remain same size. positioned adjusted.
     UIViewContentModeTop,
     UIViewContentModeBottom,
     UIViewContentModeLeft,
     UIViewContentModeRight,
     UIViewContentModeTopLeft,
     UIViewContentModeTopRight,
     UIViewContentModeBottomLeft,
     UIViewContentModeBottomRight,
     };
     */
    
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
