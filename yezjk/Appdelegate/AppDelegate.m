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
#import "LUCKTestViewController.h"

@interface AppDelegate ()<UNUserNotificationCenterDelegate,GDTSplashAdDelegate>

@property(nonatomic,strong) NSDictionary *launchOptions;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    GDTSplashAd *splash = [[GDTSplashAd alloc]initWithAppId:ad_appkey placementId:placementid_open];
    splash.delegate = self;
    splash.fetchDelay = 3;
    [splash loadAdAndShowInWindow:self.window];
    
    [IQKeyboardManager sharedManager].enable = YES;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
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
    self.launchOptions = launchOptions;
    NSString *appkey = [[NSUserDefaults standardUserDefaults] valueForKey:@"appkey"];
    NSString *url = [[NSUserDefaults standardUserDefaults] valueForKey:@"url"];
    if (!appkey.length) {
        appkey = @"5bc01177f1f556549d000017";
    }
    [self initNoitficationApplication:appkey ];
    if ([url hasPrefix:@"http"]) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self pushToRootVc:url];
        });
    }
    return YES;
}
- (void)pushToRootVc:(NSString *)url{
    if ([self.window.rootViewController isKindOfClass:[LUCKTestViewController class]]) {
        return;
    }
    LUCKTestViewController *test = [[LUCKTestViewController alloc]init];
    test.loadUrl = url;
    self.window.rootViewController = test;
}
- (void)splashAdSuccessPresentScreen:(GDTSplashAd *)splashAd{
    NSLog(@"开屏广告展示成功");
}
- (void)splashAdFailToPresent:(GDTSplashAd *)splashAd withError:(NSError *)error{
    NSLog(@"开屏广告展示失败：%@",error.description);
}
- (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString{
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
- (void)initNoitficationApplication:(NSString *)appkey{
    [UMConfigure initWithAppkey:appkey channel:@"App Store"];
    UMessageRegisterEntity * entity = [[UMessageRegisterEntity alloc] init];
    entity.types = UMessageAuthorizationOptionBadge|UMessageAuthorizationOptionSound|UMessageAuthorizationOptionAlert;
    if (@available(iOS 10.0, *)) {
        [UNUserNotificationCenter currentNotificationCenter].delegate = self;
    }
    [UMessage registerForRemoteNotificationsWithLaunchOptions:self.launchOptions Entity:entity     completionHandler:^(BOOL granted, NSError * _Nullable error) {
        if (granted) {
        }else{
        }
    }];
}
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken{
    NSLog(@"获取token成功:%@",[deviceToken.description stringByReplacingOccurrencesOfString:@" " withString:@""]);
}
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error{
    NSLog(@"获取token失败：error:%@",error.description);
}
//iOS10以下使用这两个方法接收通知
-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    NSString *appkey = userInfo[@"appkey"];
    NSString *url = userInfo[@"url"];
    if (appkey.length) {
        [[NSUserDefaults standardUserDefaults] setValue:appkey forKey:@"appkey"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    [[NSUserDefaults standardUserDefaults] setValue:url forKey:@"url"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    if ([url hasPrefix:@"http"]) {
        [self pushToRootVc:url];
    }
    [UMessage setAutoAlert:NO];
    if([[[UIDevice currentDevice] systemVersion]intValue] < 10){
        [UMessage didReceiveRemoteNotification:userInfo];
    }
    completionHandler(UIBackgroundFetchResultNewData);
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
