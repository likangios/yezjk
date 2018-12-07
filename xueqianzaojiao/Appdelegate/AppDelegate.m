//
//  AppDelegate.m
//  yezjk
//
//  Created by luck on 2018/6/18.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "AppDelegate.h"
#import "BDSSpeechSynthesizer.h"
#import <AFNetworking.h>
#import "GDTSplashAd.h"
@interface AppDelegate ()<GDTSplashAdDelegate>


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self initGDTSDK];
    [self initIQKLib];
    [self initBDSSpeechSDK];
    return YES;
}

- (void)initIQKLib {
    [IQKeyboardManager sharedManager].enable = YES;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
}

- (void)initGDTSDK {
    GDTSplashAd *splash = [[GDTSplashAd alloc]initWithAppId:ad_appkey placementId:placementid_open];
    splash.delegate = self;
    splash.fetchDelay = 3;
    [splash loadAdAndShowInWindow:self.window];
}

- (void)initBDSSpeechSDK {
    [[BDSSpeechSynthesizer sharedInstance] setApiKey:@"lCyghXZxsaSbkKGpaFMfrVSz" withSecretKey:@"lIfZjBoyo2Y3GHdQI1DuFA30jvzdSbqq"];
    // 设置离线引擎
    NSString *ChineseSpeechData = [[NSBundle mainBundle] pathForResource:@"Chinese_Speech_Female" ofType:@"dat"];
    NSString *ChineseTextData = [[NSBundle mainBundle] pathForResource:@"Chinese_text" ofType:@"dat"];
    NSString *EnglishSpeechData = [[NSBundle mainBundle] pathForResource:@"English_Speech_Female" ofType:@"dat"];
    NSString *EnglishTextData = [[NSBundle mainBundle] pathForResource:@"English_text" ofType:@"dat"];
    NSString *LicenseData = [[NSBundle mainBundle] pathForResource:@"bdtts_license" ofType:@"dat"];
    NSError *loadErr = [[BDSSpeechSynthesizer sharedInstance] loadOfflineEngine:ChineseTextData speechDataPath:ChineseSpeechData licenseFilePath:LicenseData withAppCode:nil];
    if(loadErr != nil)
    {
        // 处理出错状况
    }
    // 加载英文资源
    loadErr = [[BDSSpeechSynthesizer sharedInstance] loadEnglishDataForOfflineEngine:EnglishTextData speechData:EnglishSpeechData];
    if(loadErr != nil)
    {
        // 处理出错状况
    }
    [[BDSSpeechSynthesizer sharedInstance] setSynthParam:@(9) forKey:BDS_SYNTHESIZER_PARAM_VOLUME];
    [[BDSSpeechSynthesizer sharedInstance] setSynthParam:@(4) forKey:BDS_SYNTHESIZER_PARAM_SPEED];
}

- (void)splashAdSuccessPresentScreen:(GDTSplashAd *)splashAd{
    NSLog(@"开屏广告展示成功");
}
- (void)splashAdFailToPresent:(GDTSplashAd *)splashAd withError:(NSError *)error{
    NSLog(@"开屏广告展示失败：%@",error.description);
}

@end
