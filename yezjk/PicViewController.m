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
    [[BDSSpeechSynthesizer sharedInstance] cancel];
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
    
    UIButton *storeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:storeBtn];
    [storeBtn setImage:[UIImage imageNamed:@"store_normal"] forState:UIControlStateNormal];
    [storeBtn setImage:[UIImage imageNamed:@"store_hl"] forState:UIControlStateSelected];
    [storeBtn setTitle:@"收藏" forState:UIControlStateNormal];
    [storeBtn setTitle:@"取消收藏" forState:UIControlStateSelected];
    [storeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(15);
    }];
    RAC(storeBtn,selected) = [RACObserve(self.model, isStore) map:^id _Nullable(NSNumber *value) {
        return value;
    }];
    @weakify(self);
    [[storeBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        if (self.model.isStore.intValue == 1) {
            self.model.isStore = @0;
        }
        else{
            self.model.isStore = @1;
        }
        [[LUCKDBManager sharedInstance] updatePicModel:self.model];

        
    }];
    
    // 获得合成器实例
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    // 设置委托对象
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    
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
