//
//  ViewController.m
//  _06-KOFPracticeProject
//
//  Created by jack on 11/29/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController 	()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) NSArray *standImgs;
@property (nonatomic, strong) NSArray *lightFightImgs;
@property (nonatomic, strong) NSArray *forceFightImgs;
@property (nonatomic, strong) AVPlayer *player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.standImgs = [self loadAllImagesWithImagePrefix:@"stand" count:10];
    self.lightFightImgs = [self loadAllImagesWithImagePrefix:@"xiaozhao3" count:39];
    self.forceFightImgs = [self loadAllImagesWithImagePrefix:@"dazhao" count:87];
    [self.view addSubview:self.imageView];
    self.player = [[AVPlayer alloc]init];
}

-(NSArray*)loadAllImagesWithImagePrefix:(NSString *)imagePrefix count:(int)count{
    NSMutableArray<UIImage*> *imagesArr = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        NSString *imgStr = [NSString stringWithFormat:@"%@_%d",imagePrefix ,i+1];
//        UIImage *image = [UIImage imageNamed:imgStr];
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:imgStr ofType:@"png"];
        UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
        [imagesArr addObject:image];
    }
    return imagesArr;
}

- (IBAction)stand {
//    self.imageView.animationImages = self.standImgs;
//    self.imageView.animationRepeatCount = 0;
//    self.imageView.animationDuration = 0.5;
//    [self.imageView startAnimating];
    [self playFight:self.standImgs count:0 duration:0.5 isStand:YES musicName:nil];
}

- (IBAction)lightFight{
//    self.imageView.animationImages = self.lightFightImgs;
//    self.imageView.animationRepeatCount = 1;
//    self.imageView.animationDuration = 2;
//    [self.imageView startAnimating];
//    [self performSelector:@selector(stand) withObject:nil afterDelay:self.imageView.animationDuration];
    [self playFight:self.lightFightImgs count:1 duration:2 isStand:NO musicName:@"xiaozhao3.mp3"];
}

- (IBAction)forceFight{
//    self.imageView.animationImages = self.forceFightImgs;
//    self.imageView.animationRepeatCount = 1;
//    self.imageView.animationDuration = 3.5;
//    [self.imageView startAnimating];
//    [self performSelector:@selector(stand) withObject:nil afterDelay:self.imageView.animationDuration];
    [self playFight:self.forceFightImgs count:1 duration:3.5 isStand:NO  musicName:@"dazhao.mp3"];
}
- (IBAction)exit {
    self.standImgs = nil;
    self.lightFightImgs = nil;
    self.forceFightImgs = nil;
    self.imageView.animationImages = nil;
}

- (void)playFight:(NSArray*)images count:(NSInteger)count duration:(NSTimeInterval)duration isStand:(BOOL)isStand musicName:(NSString*)musicName{
    self.imageView.animationImages = images;
    self.imageView.animationRepeatCount = count;
    self.imageView.animationDuration = duration;
    [self.imageView startAnimating];
    if (!isStand) {
        NSURL *url = [[NSBundle mainBundle]URLForResource:musicName withExtension:nil];
        AVPlayerItem *playerItem = [[AVPlayerItem alloc]initWithURL:url];
        [self.player replaceCurrentItemWithPlayerItem:playerItem];
        [self.player play];
        self.player.rate = 1.5;
        [self performSelector:@selector(stand) withObject:nil afterDelay:self.imageView.animationDuration];
    }
}
@end
