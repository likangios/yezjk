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

@property(nonatomic,strong) YYTextView *contentTextView;

@property(nonatomic,strong) YYTextView *commentTextView;

@property(nonatomic,strong) UITextField *IDtitleField;


@property(nonatomic,strong) UIButton *saveBtn;


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
    [self.view addSubview:self.contentTextView];
    [self.view addSubview:self.commentTextView];

    [self.view addSubview:self.IDtitleField];

    [self.view addSubview:self.saveBtn];
    [self.titleField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 40));
        make.top.mas_equalTo(30);
    }];
    
    [self.contentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(100);
        make.height.mas_equalTo(self.contentTextView.mas_width);
    }];
    
    [self.commentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.left.mas_equalTo(20);
        make.top.equalTo(self.contentTextView.mas_bottom).offset(10);
        make.height.mas_equalTo(50);
    }];
    
    [self.IDtitleField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 40));
        make.top.equalTo(self.commentTextView.mas_bottom).offset(10);
    }];
    
    [self.saveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.IDtitleField.mas_bottom).offset(10);
        make.left.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];
    self.saveBtn.layer.cornerRadius = 20.0;
    
    [[self.saveBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        LUCKStoryModel *model = [[LUCKStoryModel alloc]init];
        model.title = self.titleField.text;
        model.content = self.contentTextView.text;
        model.comment = self.commentTextView.text;
        model.type = @1;
        model.picId = @"10000";
        BOOL rect =  [[LUCKDBManager sharedInstance] insertStoryModel:model];
    }];
}
- (void)dealloc{
    
    [[BDSSpeechSynthesizer sharedInstance] cancel];
}
- (UIButton *)saveBtn{
    if (!_saveBtn) {
        _saveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _saveBtn.backgroundColor = [UIColor blackColor];
        [_saveBtn  setTitle:@"保存" forState:UIControlStateNormal];
    }
    return _saveBtn;
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
- (UITextField *)IDtitleField{
    if (!_IDtitleField) {
        _IDtitleField = [UITextField new];
        _IDtitleField.borderStyle = UITextBorderStyleRoundedRect;
        _IDtitleField.textColor =[UIColor whiteColor];
        _IDtitleField.backgroundColor = [UIColor blackColor];
        _IDtitleField.placeholder = @"标题";
        _IDtitleField.font = [UIFont systemFontOfSize:17];
        _IDtitleField.textAlignment = NSTextAlignmentCenter;
    }
    return _IDtitleField;
}
- (YYTextView *)contentTextView{
    if (!_contentTextView) {
        _contentTextView = [[YYTextView alloc]init];
        _contentTextView.font = [UIFont systemFontOfSize:17];
        _contentTextView.backgroundColor = [UIColor blackColor];
        _contentTextView.textColor = [UIColor whiteColor];
        _contentTextView.placeholderText = @"故事内容";
    }
    return _contentTextView;
}
- (YYTextView *)commentTextView{
    if (!_commentTextView) {
        _commentTextView = [[YYTextView alloc]init];
        _commentTextView.font = [UIFont systemFontOfSize:17];
        _commentTextView.backgroundColor = [UIColor blackColor];
        _commentTextView.textColor = [UIColor whiteColor];
        _commentTextView.placeholderText = @"评论";
    }
    return _commentTextView;
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
        [array enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [string appendString:obj[@"words"]];
            UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            pasteboard.string = obj[@"words"];
        }];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.textView.text = string;
//        });
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
