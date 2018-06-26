//
//  LUCKAddStoryViewController.m
//  yezjk
//
//  Created by luck on 2018/6/27.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "LUCKAddStoryViewController.h"
#import "BDSSpeechSynthesizer.h"

@interface LUCKAddStoryViewController ()

@property(nonatomic,strong) UITextField *titleField;

@property(nonatomic,strong) YYTextView *textView;


@end

@implementation LUCKAddStoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    [self.view addSubview:back];
    [back mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(15);
        make.size.mas_equalTo(CGSizeMake(50, 30));
    }];
    [[back rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self.navigationController popViewControllerAnimated:YES];
    }];
    [self.view addSubview:self.titleField];
    [self.view addSubview:self.textView];
    
    [self.titleField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 40));
        make.top.mas_equalTo(30);
    }];
    
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(100);
        make.height.mas_equalTo(self.textView.mas_width);
    }];
    
    // Do any additional setup after loading the view.
}
- (UITextField *)titleField{
    if (!_titleField) {
        _titleField = [UITextField new];
        _titleField.borderStyle = UITextBorderStyleRoundedRect;
        _titleField.textColor =[UIColor whiteColor];
        _titleField.backgroundColor = [UIColor blackColor];
        _titleField.placeholder = @"标题";
        _titleField.font = [UIFont systemFontOfSize:17];
        _titleField.textAlignment = NSTextAlignmentCenter;
    }
    return _titleField;
}
- (YYTextView *)textView{
    if (!_textView) {
        _textView = [[YYTextView alloc]init];
        _textView.font = [UIFont systemFontOfSize:17];
        _textView.backgroundColor = [UIColor blackColor];
        _textView.textColor = [UIColor whiteColor];
        _textView.placeholderText = @"故事内容";
    }
    return _textView;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self generalBasicOCR];
}

- (void)generalBasicOCR{
    
    UIViewController * vc = [AipGeneralVC ViewControllerWithHandler:^(UIImage *image) {
        [self detectTextFromImage:image];
    }];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)detectTextFromImage:(UIImage *)image{
    [self dismissViewControllerAnimated:YES completion:NULL];
    NSDictionary *options = @{@"language_type": @"CHN_ENG", @"detect_direction": @"true"};
    [[AipOcrService shardService] detectTextBasicFromImage:image withOptions:options successHandler:^(id result) {
        NSArray *array = result[@"words_result"];
        NSMutableString *string = [[NSMutableString alloc]init];
       __block NSString *title = @"";
        __block  NSError* speakError = nil;
        [array enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (idx == 0) {
                title = obj[@"words"];
            }
            else{
                [string appendString:obj[@"words"]];
            }
            if([[BDSSpeechSynthesizer sharedInstance] speakSentence:obj[@"words"] withError:&speakError] == -1){
                NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
            }
        }];

        dispatch_async(dispatch_get_main_queue(), ^{
            self.titleField.text = title;
            self.textView.text = string;
        });
    } failHandler:^(NSError *err) {
        
    }];
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
