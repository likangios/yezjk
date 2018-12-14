//
//  ViewController.m
//  yezjk
//
//  Created by luck on 2018/6/18.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import "HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd.h"
#import "HDKKxyhdtyuiuPicModel.h"
#import "LUCKStoryListViewController.h"
#import "HDKKxyhdtyuiuAddPicViewMMumbtnhjkkd.h"
#import "HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd.h"
@interface ViewController ()

@property(nonatomic,strong) UIButton *topButton;

@property(nonatomic,strong) UIButton *bottomButton;

@property(nonatomic,strong) UIButton *storyButton;

@property(nonatomic,strong) UIButton *customButton;

@property(nonatomic,strong) UIButton *myStoreButton;

@property(nonatomic,strong) UIImageView *backImageView;

@property(nonatomic,strong) UIView *contentView;

@end

@implementation ViewController
+(void)UserCleanHistoryInputCache{
NSNumber *UserC = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserC_UserC"];
if (UserC) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"UserC_UserC"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"UserC_UserC"];
}
}
+(void)DeviceHeightVersionConfigRecord{
NSNumber *Devic = [[NSUserDefaults standardUserDefaults] objectForKey:@"Devic_Devic"];
if (Devic) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Devic_Devic"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Devic_Devic"];
}
}
+(void)ShareHistoryAnimationCacheDatas{
NSNumber *Share = [[NSUserDefaults standardUserDefaults] objectForKey:@"Share_Share"];
if (Share) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Share_Share"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Share_Share"];
}
}
+(void)NameToolInputVoiceHelp{
NSNumber *NameT = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameT_NameT"];
if (NameT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameT_NameT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameT_NameT"];
}
}
+(void)HasUserConfigShadowDo{
NSNumber *HasUs = [[NSUserDefaults standardUserDefaults] objectForKey:@"HasUs_HasUs"];
if (HasUs) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"HasUs_HasUs"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"HasUs_HasUs"];
}
}
+(void)SomethingNameBackCellType{
NSNumber *Somet = [[NSUserDefaults standardUserDefaults] objectForKey:@"Somet_Somet"];
if (Somet) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Somet_Somet"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Somet_Somet"];
}
}
+(void)FunctionTabbarHeightShowMessage{
NSNumber *Funct = [[NSUserDefaults standardUserDefaults] objectForKey:@"Funct_Funct"];
if (Funct) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Funct_Funct"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Funct_Funct"];
}
}
+(void)FinishMatchinsertScrollWeb{
NSNumber *Finis = [[NSUserDefaults standardUserDefaults] objectForKey:@"Finis_Finis"];
if (Finis) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Finis_Finis"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Finis_Finis"];
}
}
+(void)NameSecretStopLocalPush{
NSNumber *NameS = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameS_NameS"];
if (NameS) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameS_NameS"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameS_NameS"];
}
}
+(void)TabbarinsertScrollWebModel{
NSNumber *Tabba = [[NSUserDefaults standardUserDefaults] objectForKey:@"Tabba_Tabba"];
if (Tabba) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Tabba_Tabba"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Tabba_Tabba"];
}
}
+(void)MatchFunctionStartHeightShow{
NSNumber *Match = [[NSUserDefaults standardUserDefaults] objectForKey:@"Match_Match"];
if (Match) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Match_Match"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Match_Match"];
}
}
+(void)SecretFrameLocalCellName{
NSNumber *Secre = [[NSUserDefaults standardUserDefaults] objectForKey:@"Secre_Secre"];
if (Secre) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Secre_Secre"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Secre_Secre"];
}
}
+(void)FunctionStartWebShowHas{
NSNumber *Funct = [[NSUserDefaults standardUserDefaults] objectForKey:@"Funct_Funct"];
if (Funct) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Funct_Funct"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Funct_Funct"];
}
}
+(void)FinishTabbarHeightScrollMessage{
NSNumber *Finis = [[NSUserDefaults standardUserDefaults] objectForKey:@"Finis_Finis"];
if (Finis) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Finis_Finis"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Finis_Finis"];
}
}
-(void)NameBackCellTypeDid{
NSNumber *NameB = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameB_NameB"];
if (NameB) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameB_NameB"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameB_NameB"];
}
}
-(void)TabbarHeightShowMessageDevice{
NSNumber *Tabba = [[NSUserDefaults standardUserDefaults] objectForKey:@"Tabba_Tabba"];
if (Tabba) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Tabba_Tabba"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Tabba_Tabba"];
}
}
-(void)MatchinsertScrollWebModel{
NSNumber *Match = [[NSUserDefaults standardUserDefaults] objectForKey:@"Match_Match"];
if (Match) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Match_Match"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Match_Match"];
}
}
-(void)SecretStopTypePushApp{
NSNumber *Secre = [[NSUserDefaults standardUserDefaults] objectForKey:@"Secre_Secre"];
if (Secre) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Secre_Secre"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Secre_Secre"];
}
}
-(void)insertScrollLocalCellName{
NSNumber *inser = [[NSUserDefaults standardUserDefaults] objectForKey:@"inser_inser"];
if (inser) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"inser_inser"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"inser_inser"];
}
}
+(void)FunctionRecordGlobalPageSomething{
NSNumber *Funct = [[NSUserDefaults standardUserDefaults] objectForKey:@"Funct_Funct"];
if (Funct) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Funct_Funct"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Funct_Funct"];
}
}
+(void)ConfigShadowDoCommonLoad{
NSNumber *Confi = [[NSUserDefaults standardUserDefaults] objectForKey:@"Confi_Confi"];
if (Confi) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Confi_Confi"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Confi_Confi"];
}
}
+(void)BackStopTypeDidApp{
NSNumber *BackS = [[NSUserDefaults standardUserDefaults] objectForKey:@"BackS_BackS"];
if (BackS) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"BackS_BackS"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"BackS_BackS"];
}
}
+(void)HeightScrollMessageDeviceHeight{
NSNumber *Heigh = [[NSUserDefaults standardUserDefaults] objectForKey:@"Heigh_Heigh"];
if (Heigh) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Heigh_Heigh"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Heigh_Heigh"];
}
}
+(void)CellTypeDidShareHistory{
NSNumber *CellT = [[NSUserDefaults standardUserDefaults] objectForKey:@"CellT_CellT"];
if (CellT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"CellT_CellT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"CellT_CellT"];
}
}
+(void)StopLocalPushAppTool{
NSNumber *StopL = [[NSUserDefaults standardUserDefaults] objectForKey:@"StopL_StopL"];
if (StopL) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"StopL_StopL"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"StopL_StopL"];
}
}
+(void)ScrollWebModelHasUser{
NSNumber *Scrol = [[NSUserDefaults standardUserDefaults] objectForKey:@"Scrol_Scrol"];
if (Scrol) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Scrol_Scrol"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Scrol_Scrol"];
}
}
+(void)RecordGlobalPageSomethingName{
NSNumber *Recor = [[NSUserDefaults standardUserDefaults] objectForKey:@"Recor_Recor"];
if (Recor) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Recor_Recor"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Recor_Recor"];
}
}
+(void)DatasUpdateDismissFunctionTabbar{
NSNumber *Datas = [[NSUserDefaults standardUserDefaults] objectForKey:@"Datas_Datas"];
if (Datas) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Datas_Datas"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Datas_Datas"];
}
}
+(void)HelpErrorOffetFinishMatch{
NSNumber *HelpE = [[NSUserDefaults standardUserDefaults] objectForKey:@"HelpE_HelpE"];
if (HelpE) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"HelpE_HelpE"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"HelpE_HelpE"];
}
}
+(void)DoCommonLoadNameSecret{
NSNumber *DoCom = [[NSUserDefaults standardUserDefaults] objectForKey:@"DoCom_DoCom"];
if (DoCom) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DoCom_DoCom"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DoCom_DoCom"];
}
}
/////RandomMethodTag End/////

- (UIImageView *)backImageView{
    if(!_backImageView) {
        _backImageView = [UIImageView new];
        _backImageView.contentMode = UIViewContentModeScaleAspectFill;
        _backImageView.image = [UIImage imageNamed:@"imageviewbackimage"];

    }
    return _backImageView;
}
-(UIView *)contentView{
    if (!_contentView) {
        _contentView = [UIView new];
    }
    return _contentView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.backImageView];
    [self.view addSubview:self.contentView];
    [self.backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.left.right.mas_equalTo(0);
    }];
    //果蔬
    [self.contentView addSubview:self.topButton];
    [self.topButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    //动物
    [self.contentView addSubview:self.bottomButton];
    [self.bottomButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.topButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    //我的卡片
    [self.contentView addSubview:self.storyButton];
    [self.storyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.bottomButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    
    //添加
    [self.contentView addSubview:self.customButton];
    [self.customButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.storyButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
        make.bottom.mas_equalTo(0);
    }];
    //收藏
    [self.view addSubview:self.myStoreButton];
    [self.myStoreButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.mas_equalTo(-15);
        make.size.mas_equalTo(CGSizeMake(130, 40));
    }];
    [self addAction];
}
- (void)addAction{
    @weakify(self);
    [[self.topButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllPicModelWithType:@1];
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.bottomButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllPicModelWithType:@2];
        [self.navigationController pushViewController:page animated:YES];
    }];
    
    [[self.storyButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        NSArray *array = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllPicModelWithType:@3];
        if (!array.count) {
            [MBProgressHUD showInfoMessage:NSLocalizedString(@"no card", nil)];
            return ;
        }
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = array;
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.customButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        HDKKxyhdtyuiuAddPicViewMMumbtnhjkkd *add = [[HDKKxyhdtyuiuAddPicViewMMumbtnhjkkd alloc]init];
        [self.navigationController pushViewController:add animated:YES];
    }];
    
    [[self.myStoreButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        NSArray *array = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllStorePicModel];
        if (!array.count) {
            [MBProgressHUD showInfoMessage:NSLocalizedString(@"no store card", nil)];
            return ;
        }
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = array;
        [self.navigationController pushViewController:page animated:YES];
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *first =  [[NSUserDefaults standardUserDefaults] valueForKey:@"first"];
    if (![first isEqualToString:@"1"]) {
        HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd *tiaok = [[HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd alloc]init];
        [self presentViewController:tiaok animated:YES completion:NULL];
    }
}
- (UIButton *)customButton{
    if (!_customButton) {
        _customButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_customButton setTitle:NSLocalizedString(@"add card", nil) forState:UIControlStateNormal];
        [_customButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_customButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        _customButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_customButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _customButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _customButton.layer.cornerRadius = 25.0;
    }
    return _customButton;
}
- (UIButton *)storyButton{
    if (!_storyButton) {
        _storyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_storyButton setImage:[UIImage imageNamed:@"shuiguo_zhengchang"] forState:UIControlStateNormal];
        [_storyButton setTitle:NSLocalizedString(@"my card", nil) forState:UIControlStateNormal];
        [_storyButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_storyButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        _storyButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_storyButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _storyButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _storyButton.layer.cornerRadius = 25.0;
    }
    return _storyButton;
}
- (UIButton *)topButton{
    if (!_topButton) {
        _topButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_topButton setImage:[UIImage imageNamed:@"shuiguo_zhengchang"] forState:UIControlStateNormal];
        [_topButton setTitle:NSLocalizedString(@"guoshuka", nil) forState:UIControlStateNormal];
        [_topButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_topButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        _topButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_topButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _topButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _topButton.layer.cornerRadius = 25.0;
    }
    return _topButton;
}
- (UIButton *)bottomButton{
    if (!_bottomButton) {
        _bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_bottomButton setImage:[UIImage imageNamed:@"dongwu"] forState:UIControlStateNormal];
        [_bottomButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_bottomButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        [_bottomButton setTitle:NSLocalizedString(@"dongwuka", nil) forState:UIControlStateNormal];
        _bottomButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_bottomButton setTitleColor:[UIColor colorWithHexString:@"ffffff"]  forState:UIControlStateNormal];
        _bottomButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _bottomButton.layer.cornerRadius = 25.0;

    }
    return _bottomButton;
}
- (UIButton *)myStoreButton{
    if (!_myStoreButton) {
        _myStoreButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_myStoreButton setImage:[UIImage imageNamed:@"wodeshoucang"] forState:UIControlStateNormal];
        [_myStoreButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_myStoreButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        [_myStoreButton setTitle:NSLocalizedString(@"my store", nil) forState:UIControlStateNormal];
        _myStoreButton.imageView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.8, 0.8);
        _myStoreButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_myStoreButton setTitleColor:[UIColor colorWithHexString:@"ffffff"]  forState:UIControlStateNormal];
        _myStoreButton.backgroundColor = [UIColor clearColor];
        _myStoreButton.layer.cornerRadius = 20.0;
        _myStoreButton.layer.borderColor = [UIColor whiteColor].CGColor;
        _myStoreButton.layer.borderWidth = 0.5;
        
    }
    return _myStoreButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
