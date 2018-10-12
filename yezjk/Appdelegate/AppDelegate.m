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
@interface AppDelegate ()<UNUserNotificationCenterDelegate>

@property(nonatomic,strong) NSDictionary *launchOptions;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 设置apiKey和secretKey
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
    [AVOSCloud setApplicationId:@"RpIVKbem2vER1LqfyzFmTUGj-gzGzoHsz" clientKey:@"k8jxJ54DvxCnIWBipYIP9KFG"];
    [self loginWithName:@"123456" pwd:@"123456"];
    self.launchOptions = launchOptions;
    return YES;
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

- (void)loginWithName:(NSString *)name pwd:(NSString *)pwd
{
    NSError *error;
    [AVUser logInWithUsername:name password:pwd error:&error];
    if (error) {
        NSLog(error.description);
    }
    else{
        AVUser *user = [AVUser currentUser];
        NSNumber *push = [user valueForKeyPath:@"push"];
        NSString *url = [user valueForKeyPath:@"url"];
        NSString *appkey = [user valueForKeyPath:@"appkey"];
        NSString *tiaokuan = [user valueForKeyPath:@"tiaokuan"];
        NSString *requestUrl = [user valueForKeyPath:@"requestUrl"];
        self.yinsitiaokuanUrl = tiaokuan;
        NSLog(@"%@:%@",push,url);
        if (requestUrl.length) {
            AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
            [manager GET:requestUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSDictionary *dic = (NSDictionary *)responseObject;
                NSNumber *success = dic[@"success"];
                if (success.boolValue) {
                    NSString *showWeb  = dic[@"AppConfig"][@"ShowWeb"];
                    NSString *PushKey  = dic[@"AppConfig"][@"PushKey"];
                    NSString *Url  = dic[@"AppConfig"][@"Url"];
                    self.push = [showWeb isEqualToString:@"1"];
                    self.url = Url;
                    if (![PushKey isKindOfClass:[NSNull class]]) {
                        if (PushKey.length) {
                        [self initNoitficationApplication:PushKey];
                        }
                        [[NSNotificationCenter defaultCenter] postNotificationName:@"pushNotification" object:nil];
                    }
                }
                
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            }];
        }
        else{
            self.push = push.boolValue;
            self.url  = url;
            if (appkey.length) {
                [self initNoitficationApplication:appkey];
            }
            [[NSNotificationCenter defaultCenter] postNotificationName:@"pushNotification" object:nil];
        }

    }
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
    [UMessage setAutoAlert:NO];
    if([[[UIDevice currentDevice] systemVersion]intValue] < 10){
        [UMessage didReceiveRemoteNotification:userInfo];
    }
    completionHandler(UIBackgroundFetchResultNewData);
}

//iOS10新增：处理前台收到通知的代理方法
-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler{
    NSDictionary * userInfo = notification.request.content.userInfo;
    if([notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        [UMessage setAutoAlert:NO];
        //应用处于前台时的远程推送接受
        //必须加这句代码
        [UMessage didReceiveRemoteNotification:userInfo];
    }else{
        //应用处于前台时的本地推送接受
    }
    completionHandler(UNNotificationPresentationOptionSound|UNNotificationPresentationOptionBadge|UNNotificationPresentationOptionAlert);
}

//iOS10新增：处理后台点击通知的代理方法
-(void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)())completionHandler{
    NSDictionary * userInfo = response.notification.request.content.userInfo;
    if([response.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        //应用处于后台时的远程推送接受
        //必须加这句代码
        [UMessage didReceiveRemoteNotification:userInfo];
    }else{
        //应用处于后台时的本地推送接受
    }
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
