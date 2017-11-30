//
//  ViewController.m
//  _07-SoundInAnimation
//
//  Created by jack on 11/30/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (nonatomic, strong) AVPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIToolbar *toolBar = [[UIToolbar alloc]init];
    toolBar.frame = self.bgImageView.bounds;
    toolBar.barStyle = UIBarStyleBlack;
    toolBar.alpha = 0.98;
    [self.bgImageView addSubview:toolBar];
//    NSString *path = [[NSBundle mainBundle]pathForResource:@"mySong.mp3" ofType:nil];
//    NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"mySong1.mp3" withExtension:nil];
    AVPlayerItem *playItem = [[AVPlayerItem alloc]initWithURL:url];
    self.player = [[AVPlayer alloc]initWithPlayerItem:playItem];
    
}

- (IBAction)changeMusic:(UIButton*)button {
    NSString *musicName = nil;
    switch (button.tag) {
        case 1:
            musicName = @"mySong2.mp3";
            break;
        case 4:
            musicName = @"mySong3.mp3";
            break;
        default:
            break;
    }
    NSURL *url = [[NSBundle mainBundle] URLForResource:musicName withExtension:nil];
    AVPlayerItem *playItem = [[AVPlayerItem alloc]initWithURL:url];
    [self.player replaceCurrentItemWithPlayerItem:playItem];
    [self.player play];
}

- (IBAction)playOrPause:(UIButton*)button {
    switch (button.tag) {
        case 3:
            [self.player play];
            break;
        case 2:
            [self.player pause];
            break;
        default:
            break;
    }
}



@end
