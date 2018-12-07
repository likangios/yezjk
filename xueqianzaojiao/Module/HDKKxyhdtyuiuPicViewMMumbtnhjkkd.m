//
//  HDKKxyhdtyuiuPicViewMMumbtnhjkkd.m
//  yezjk
//
//  Created by perfay on 2018/6/19.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "HDKKxyhdtyuiuPicViewMMumbtnhjkkd.h"

@interface HDKKxyhdtyuiuPicViewMMumbtnhjkkd ()<BDSSpeechSynthesizerDelegate>

@property(nonatomic,strong) YYAnimatedImageView *showImageView;

@property(nonatomic,strong) UIButton *storeBtn;

@end

@implementation HDKKxyhdtyuiuPicViewMMumbtnhjkkd


- (UIButton *)storeBtn{
    if (!_storeBtn) {
        _storeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_storeBtn setImage:[UIImage imageNamed:@"meiyoubaocun_icon"] forState:UIControlStateNormal];
        [_storeBtn setImage:[UIImage imageNamed:@"baocungaoliang"] forState:UIControlStateSelected];
        [_storeBtn setTitle:NSLocalizedString(@"store", nil) forState:UIControlStateNormal];
        [_storeBtn setTitle:NSLocalizedString(@"cancel store", nil) forState:UIControlStateSelected];
    }
    return _storeBtn;
}
-(UIImage*)loadImageWithName:(NSString *)imgName{
    NSString    *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) objectAtIndex:0];
    NSString    *path = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithString: imgName] ];
    UIImage     *image = [UIImage imageWithContentsOfFile:path];
    return image;
}
- (void)creatSubViews{
    [self.view addSubview:self.showImageView];
    [self.showImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(MIN(CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)));
    }];
    if (self.model.isCustom) {
        self.showImageView.image = [self loadImageWithName:self.model.imageName];
    }
    else{
        self.showImageView.image = [UIImage imageNamed:self.model.imageName];
    }
    __weak typeof(self)weakSelf = self;
    [self.showImageView bk_whenTapped:^{
        [weakSelf speakMehtod];
    }];
    [self.view addSubview:self.storeBtn];

    [self.storeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(15);
    }];
    @weakify(self);
    [[self.storeBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        if (self.model.isStore.intValue == 1) {
            self.model.isStore = @0;
        }
        else{
            self.model.isStore = @1;
        }
        [[HDKKxyhdtyuiuDBManager sharedInstance] updatePicModel:self.model];
    }];
    RAC(self.storeBtn,selected) = [RACObserve(self.model, isStore) map:^id _Nullable(NSNumber *value) {
        return value;
    }];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    [self creatSubViews];
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
}
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
