//
//  PicViewController.m
//  yezjk
//
//  Created by perfay on 2018/6/19.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "PicViewController.h"
#import "BDSSpeechSynthesizer.h"

@interface PicViewController ()<BDSSpeechSynthesizerDelegate>

@property(nonatomic,strong) YYAnimatedImageView *showImageView;

@end

@implementation PicViewController

- (void)speakMehtod{
    __block  NSError* speakError = nil;
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:self.model.title withError:&speakError] == -1){
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:self.model.word withError:&speakError] == -1){
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_prefersNavigationBarHidden = YES;
    self.view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.showImageView];
    [self.showImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.equalTo(self.view.mas_height).multipliedBy(1);
    }];
    self.showImageView.image = [UIImage imageNamed:self.model.imageName];
    
    __weak typeof(self)weakSelf = self;

    [self.showImageView bk_whenTapped:^{
        [weakSelf speakMehtod];
    }];
    // 获得合成器实例
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    // 设置委托对象
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    
    // 开始合成并播放
    //    NSError* speakError = nil;
    //    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:@"您好" withError:&speakError] == -1){
    //        // 错误
    //        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    //    }
    //    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:@"今天天气真不错" withError:&speakError] == -1){
    //        // 错误
    //        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    //    }
    //    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:@"Today's weather is really good!" withError:&speakError] == -1){
    //        // 错误
    //        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    //    }
    
    
}

- (void)synthesizerStartWorkingSentence:(NSInteger)SynthesizeSentence
{
    NSLog(@"Began synthesizing sentence %ld", (long)SynthesizeSentence);
}

- (void)synthesizerFinishWorkingSentence:(NSInteger)SynthesizeSentence
{
    NSLog(@"Finished synthesizing sentence %ld", (long)SynthesizeSentence);
}

- (void)synthesizerSpeechStartSentence:(NSInteger)SpeakSentence
{
    NSLog(@"Began playing sentence %ld", (long)SpeakSentence);
}

- (void)synthesizerSpeechEndSentence:(NSInteger)SpeakSentence
{
    NSLog(@"Finished playing sentence %ld", (long)SpeakSentence);
}

- (YYAnimatedImageView *)showImageView{
    if (!_showImageView) {
        _showImageView = [[YYAnimatedImageView alloc]init];
        _showImageView.userInteractionEnabled = YES;
    }
    return _showImageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
