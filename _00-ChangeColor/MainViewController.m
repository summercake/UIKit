//
//  MainViewController.m
//  _00-ChangeColor
//
//  Created by jack on 11/27/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation MainViewController
#pragma - red
-(IBAction)clickRedButton{
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor redColor];
    self.label.text = @"This is red";
    self.label.backgroundColor = [UIColor greenColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.font = [UIFont systemFontOfSize:30.f];
}
#pragma - green
-(IBAction)clickGreenButton{
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor greenColor];
    self.label.text = @"This is green";
    
    self.label.backgroundColor = [UIColor redColor];
    self.label.textAlignment = NSTextAlignmentLeft;
    self.label.font = [UIFont systemFontOfSize:18.f];
}
#pragma - blue
-(IBAction)clickBlueButton{
    NSLog(@"%s", __func__);
    self.label.textColor = [UIColor blueColor];
    self.label.text = @"This is blue";
    
    self.label.backgroundColor = [UIColor greenColor];
    self.label.textAlignment = NSTextAlignmentRight;
    self.label.font = [UIFont systemFontOfSize:16.f];
}

@end
