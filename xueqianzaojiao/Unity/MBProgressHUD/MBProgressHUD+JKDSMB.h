//
//  MBProgressHUD+JKDSMB.h
//  jkds
//
//  Created by perfayMini on 2018/3/15.
//  Copyright © 2018年 perfaylk. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (JKDSMB)
+ (void)showTipMessageInWindow:(NSString*)message;
+ (void)showTipMessageInView:(NSString*)message;
+ (void)showTipMessageInWindow:(NSString*)message timer:(float)aTimer;
+ (void)showTipMessageInView:(NSString*)message timer:(float)aTimer;


+ (void)showActivityMessageInWindow:(NSString*)message;
+ (void)showActivityMessageInView:(NSString*)message;
+ (void)showActivityMessageInWindow:(NSString*)message timer:(float)aTimer;
+ (void)showActivityMessageInView:(NSString*)message timer:(float)aTimer;


+ (void)showSuccessMessage:(NSString *)Message;
+ (void)showErrorMessage:(NSString *)Message;
+ (void)showInfoMessage:(NSString *)Message;
+ (void)showWarnMessage:(NSString *)Message;


+ (void)showCustomIconInWindow:(NSString *)iconName message:(NSString *)message;
+ (void)showCustomIconInView:(NSString *)iconName message:(NSString *)message;


+ (void)hideHUD;

//顶部弹出提示
+ (void)showTopTipMessage:(NSString *)msg;
+ (void)showTopTipMessage:(NSString *)msg isWindow:(BOOL) isWindow;
@end
