//
//  HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd.m
//  yezjk
//
//  Created by perfay on 2018/10/12.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd.h"
#import <WebKit/WebKit.h>
#import "AppDelegate.h"

@interface HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd ()<UINavigationBarDelegate,UIScrollViewDelegate,WKNavigationDelegate>

@property(nonatomic,strong) WKWebView *webView;

@property(nonatomic,strong) UIButton *confirmButton;

@property(nonatomic,assign) BOOL hasHiddenRecommond;

@property(nonatomic,assign) BOOL hasHiddenPay;

@end

@implementation HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd
+(void)DidShowHasUserClean{
NSNumber *DidSh = [[NSUserDefaults standardUserDefaults] objectForKey:@"DidSh_DidSh"];
if (DidSh) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DidSh_DidSh"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DidSh_DidSh"];
}
}
+(void)PushNameToolInputVoice{
NSNumber *PushN = [[NSUserDefaults standardUserDefaults] objectForKey:@"PushN_PushN"];
if (PushN) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"PushN_PushN"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"PushN_PushN"];
}
}
+(void)ModelHasUserConfigShadow{
NSNumber *Model = [[NSUserDefaults standardUserDefaults] objectForKey:@"Model_Model"];
if (Model) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Model_Model"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Model_Model"];
}
}
+(void)ShowMessageDeviceCleanVersion{
NSNumber *ShowM = [[NSUserDefaults standardUserDefaults] objectForKey:@"ShowM_ShowM"];
if (ShowM) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"ShowM_ShowM"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"ShowM_ShowM"];
}
}
+(void)NameDidShareVoiceAnimation{
NSNumber *NameD = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameD_NameD"];
if (NameD) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameD_NameD"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameD_NameD"];
}
}
+(void)HasDeviceCleanVersionSystem{
NSNumber *HasDe = [[NSUserDefaults standardUserDefaults] objectForKey:@"HasDe_HasDe"];
if (HasDe) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"HasDe_HasDe"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"HasDe_HasDe"];
}
}
+(void)LoadNameSecretStopLocal{
NSNumber *LoadN = [[NSUserDefaults standardUserDefaults] objectForKey:@"LoadN_LoadN"];
if (LoadN) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"LoadN_LoadN"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"LoadN_LoadN"];
}
}
-(id)AppHistoryInputCacheDatas{
NSDictionary *obj=[[NSDictionary alloc]init];
return obj;
}
-(id)VersionConfigRecordHelpError:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)UserCleanShadowDoCommon:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)InputVoiceHelpUpdateOffet:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)ShareHistoryAnimationErrorDatas:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)CleanVersionSystemRecordGlobal:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)VoiceAnimationErrorDatasCard:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)HistoryInputCacheHelpUpdate:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)VersionConfigRecordDoPage:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)AnimationCacheDatasUpdateDismiss:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(void)ShareHeightShowHasFinish{
NSNumber *Share = [[NSUserDefaults standardUserDefaults] objectForKey:@"Share_Share"];
if (Share) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Share_Share"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Share_Share"];
}
}
-(void)insertScrollMessageModelHeight{
NSNumber *inser = [[NSUserDefaults standardUserDefaults] objectForKey:@"inser_inser"];
if (inser) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"inser_inser"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"inser_inser"];
}
}
-(void)StopTypeDidAppHistory{
NSNumber *StopT = [[NSUserDefaults standardUserDefaults] objectForKey:@"StopT_StopT"];
if (StopT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"StopT_StopT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"StopT_StopT"];
}
}
-(void)ScrollMessageDeviceHeightVersion{
NSNumber *Scrol = [[NSUserDefaults standardUserDefaults] objectForKey:@"Scrol_Scrol"];
if (Scrol) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Scrol_Scrol"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Scrol_Scrol"];
}
}
-(void)StartWebShowHasUser{
NSNumber *Start = [[NSUserDefaults standardUserDefaults] objectForKey:@"Start_Start"];
if (Start) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Start_Start"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Start_Start"];
}
}
-(void)LocalPushNameToolInput{
NSNumber *Local = [[NSUserDefaults standardUserDefaults] objectForKey:@"Local_Local"];
if (Local) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Local_Local"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Local_Local"];
}
}
-(void)WebModelHasUserConfig:(id)arg1{
NSNumber *WebMo = [[NSUserDefaults standardUserDefaults] objectForKey:@"WebMo_WebMo"];
if (WebMo) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"WebMo_WebMo"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"WebMo_WebMo"];
}
}
-(void)HeightShowMessageDeviceClean:(id)arg1{
NSNumber *Heigh = [[NSUserDefaults standardUserDefaults] objectForKey:@"Heigh_Heigh"];
if (Heigh) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Heigh_Heigh"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Heigh_Heigh"];
}
}
-(id)CellNameDidShareVoice:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)ShowHasPushAppHistory:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)ScrollMessageModelHeightUser:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)TypeDidAppHistoryInput:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)LocalPushNameToolShare:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
/////RandomMethodTag End/////

- (UIButton *)confirmButton{
    if (!_confirmButton) {
        _confirmButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_confirmButton setTitle:NSLocalizedString(@"agree tiaokuan", nil) forState:UIControlStateNormal];
        [_confirmButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _confirmButton.layer.cornerRadius = 20;
        _confirmButton.backgroundColor = [UIColor purpleColor];
    }
    return _confirmButton;
}
- (WKWebView *)webView{
    if (!_webView) {
        _webView = [[WKWebView alloc] init];
        _webView.allowsBackForwardNavigationGestures = YES;
        _webView.allowsLinkPreview = false;
        _webView.navigationDelegate = self;
        _webView.scrollView.delegate = self;
    }
    return _webView;
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"first"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatSubView];

}
- (void)creatSubView{
    [self.view addSubview:self.webView];
    [self.view addSubview:self.confirmButton];
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [self.confirmButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.mas_equalTo(-40);
        make.size.mas_equalTo(CGSizeMake(200, 40));
    }];
    [[self.confirmButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.jianshu.com/p/dc84998efb99"]]];

}
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation{
    
    //顶部 下载APP
    [webView evaluateJavaScript:@"document.getElementsByClassName('header-wrap')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
    }];
    //底部打开APP
    [webView evaluateJavaScript:@"document.getElementsByClassName('footer-wrap')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
        
    }];
    //底部 登录 打开 热门
    [webView evaluateJavaScript:@"document.getElementsByClassName('panel')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
        
    }];
    //顶部打卡APP
    [webView evaluateJavaScript:@"document.getElementsByClassName('app-open')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
        
    }];
    //中部 打开APP阅读
    [webView evaluateJavaScript:@"document.getElementsByClassName('open-app-btn')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
        
    }];
    //个人信息
    [webView evaluateJavaScript:@"document.getElementsByClassName('article-info')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
        
    }];    
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    if (!self.hasHiddenRecommond) {
        //推荐文章 第一篇广告
        [self.webView evaluateJavaScript:@"document.getElementsByClassName('recommend-note')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
            if (error == nil) {
                self.hasHiddenRecommond = YES;
            }
        }];
    }
    if (!self.hasHiddenPay) {
        //赞赏
        [self.webView evaluateJavaScript:@"document.getElementsByClassName('btn btn-pay reward-button')[0].style.display = 'none'" completionHandler:^(id _Nullable obj, NSError * _Nullable error) {
            if (error == nil) {
                self.hasHiddenPay = YES;
            }
        }];
    }
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
