//
//  ViewController.m
//  _01-AdditionCalculator
//
//  Created by jack on 11/28/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end
    
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sumBtn{
    NSString *n1 = self.num1.text;
    NSString *n2 = self.num2.text;
    if (n1.length == 0) {
        NSLog(@"Please enter first number");
        [self showInfo:@"Please enter first number"];
            }
    if (n2.length == 0) {
        NSLog(@"Please enter second number");
        [self showInfo:@"Please enter second number"];
    }
    self.resultLabel.text = [NSString stringWithFormat : @"%zd", [n1 integerValue] + [n2 integerValue]];
}
-(void)showInfo:(NSString*)info{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Wrong Input" message:info delegate:nil cancelButtonTitle:@"Return" otherButtonTitles:nil, nil];
    [alertView show];

}
@end
