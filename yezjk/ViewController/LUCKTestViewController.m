//
//  LUCKTestViewController.m
//  yezjk
//
//  Created by perfay on 2018/10/11.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "LUCKTestViewController.h"
#import <WebKit/WebKit.h>
#import "LUCKBottomView.h"
@interface LUCKTestViewController ()<WKNavigationDelegate>

@property(nonatomic,strong) WKWebView *webView;

@property(nonatomic,strong) LUCKBottomView *bottomView;

@property(nonatomic,strong) UIProgressView *progressView;

@end

@implementation LUCKTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.webView];
    [self.view addSubview:self.bottomView];
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        if(KIsiPhoneX) {
            make.top.mas_equalTo(45);
        }
        else{
            make.top.mas_equalTo(0);
        }
        make.bottom.equalTo(self.bottomView.mas_top);
    }];
    [self.bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        if(KIsiPhoneX) {
            make.bottom.mas_equalTo(-35);
        }
        else{
            make.bottom.mas_equalTo(0);
        }
        make.height.mas_equalTo(45);
    }];
    
    // Do any additional setup after loading the view.
}
- (WKWebView *)webView{
    if (!_webView) {
        NSMutableString *javascritp = [[NSMutableString alloc]init];
        [javascritp appendString:@"document.documentElement.style.webkitTouchCallout='none';"];
        [javascritp appendString:@"document.documentElement.style.webkitUserSelect='none';"];
        WKUserScript *script = [[WKUserScript alloc]initWithSource:javascritp injectionTime:WKUserScriptInjectionTimeAtDocumentStart forMainFrameOnly:YES];
        
        WKUserContentController *usercontroller = [[WKUserContentController alloc]init];
        [usercontroller addUserScript:script];
        WKWebViewConfiguration *webviewConfig = [[WKWebViewConfiguration alloc]init];
        webviewConfig.processPool = [[WKProcessPool alloc]init];
        webviewConfig.allowsInlineMediaPlayback = YES;
        webviewConfig.userContentController = usercontroller;
        _webView = [[WKWebView alloc] initWithFrame:CGRectZero configuration:webviewConfig];
        _webView.navigationDelegate = self;
        _webView.allowsBackForwardNavigationGestures = YES;
        _webView.allowsLinkPreview = false;
    }
    return _webView;
}
- (LUCKBottomView *)bottomView{
    if (!_bottomView) {
        _bottomView = [[LUCKBottomView alloc]init];
        [_bottomView setButtonClick:^(NSInteger index) {
            
        }];
    }
    return _bottomView;
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
