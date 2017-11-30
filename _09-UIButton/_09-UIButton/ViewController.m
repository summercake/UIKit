//
//  ViewController.m
//  _09-UIButton
//
//  Created by jack on 11/30/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIButton *btn = [[UIButton alloc]init];
//    btn.buttonType = UIButtonTypeInfoDark;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(100, 100, 170, 60);
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"Default" forState:UIControlStateNormal];
    [btn setTitle:@"HighLighted" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [btn setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    btn.titleLabel.shadowOffset = CGSizeMake(3, 2);
    [btn setImage:[UIImage imageNamed:@"player_btn_pause_normal"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"player_btn_pause_highlight"] forState:UIControlStateHighlighted];
//    btn.imageView.backgroundColor = [UIColor purpleColor];
    [btn setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"buttongreen_highlighted"] forState:UIControlStateHighlighted];
    
    // listener
//    SEL sel = @selector(clickButtton);
    [btn addTarget:self action:@selector(demo:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:btn];
    
    
}

-(void)demo: (UIButton*)button{
    NSLog(@"%s", __func__);
}

- (IBAction)clickButton:(UIButton *)button {
    button.enabled = NO;
}

@end
