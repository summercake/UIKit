//
//  ViewController.m
//  _01-UILabel
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
    UILabel *label = [[UILabel alloc]init];
    [self.view addSubview:label];
    label.frame = CGRectMake(100, 100, 200, 60);
    label.backgroundColor = [UIColor redColor];
    label.text = @"Big Brother, Big Brother, Big Brother, Big Brother, Big Brother";
    label.textColor = [UIColor yellowColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:24.f];
    label.font = [UIFont boldSystemFontOfSize:24.f];
    label.font = [UIFont italicSystemFontOfSize:24.f];
    label.shadowColor = [UIColor grayColor];
    label.shadowOffset = CGSizeMake(-3, 1);
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByWordWrapping;
    
    /**
     // NSParagraphStyle
     typedef NS_ENUM(NSInteger, NSLineBreakMode) {
     NSLineBreakByWordWrapping = 0,     	// Wrap at word boundaries, default
     NSLineBreakByCharWrapping,		// Wrap at character boundaries
     NSLineBreakByClipping,		// Simply clip
     NSLineBreakByTruncatingHead,	// Truncate at head of line: "...wxyz"
     NSLineBreakByTruncatingTail,	// Truncate at tail of line: "abcd..."
     NSLineBreakByTruncatingMiddle	// Truncate middle of line:  "ab...yz"
     } NS_ENUM_AVAILABLE(10_0, 6_0);
     **/
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
