//
//  LUCKAddPicViewController.m
//  yezjk
//
//  Created by perfay on 2018/10/10.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "LUCKAddPicViewController.h"

@interface LUCKAddPicViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property(nonatomic,strong) YYAnimatedImageView *imgView;

@property(nonatomic,strong) UITextField  *chineseField;

@property(nonatomic,strong) UITextField  *englishField;

@property(nonatomic,strong) UIButton *saveBtn;

@property(nonatomic,strong) UIImagePickerController *picker;

@end

@implementation LUCKAddPicViewController

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
    
    [self.view addSubview:self.imgView];
    [self.view addSubview:self.chineseField];
    [self.view addSubview:self.englishField];
    [self.view addSubview:self.saveBtn];

    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(kScreenWidth * 0.8);
        make.centerX.equalTo(self.view);
        make.top.mas_equalTo(80);
    }];
    [self.chineseField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imgView.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 40));
    }];
    [self.englishField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.chineseField.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 40));
    }];
    [self.saveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.englishField.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 40));
    }];
    [self.imgView bk_whenTapped:^{
        [self presentViewController:self.picker animated:YES completion:NULL];
    }];
    [[self.saveBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        
    }];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage* edit = [info objectForKey:UIImagePickerControllerEditedImage];
    self.imgView.image = edit;
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
- (UIImagePickerController *)picker{
    if (!_picker) {
        _picker = [[UIImagePickerController alloc]init];
        _picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        _picker.allowsEditing = YES;
        _picker.delegate = self;
//        NSString *requiredMediaType = (NSString *)kUTTypeImage;
//        _picker.mediaTypes = @[requiredMediaType];
    }
    return _picker;
}
- (UIButton *)saveBtn{
    if (!_saveBtn) {
        _saveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _saveBtn.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        [_saveBtn  setTitle:@"保存" forState:UIControlStateNormal];
        _saveBtn.layer.cornerRadius = 4;
    }
    return _saveBtn;
}
- (UITextField *)chineseField{
    if (!_chineseField) {
        _chineseField = [UITextField new];
        _chineseField.borderStyle = UITextBorderStyleRoundedRect;
        _chineseField.textColor =[UIColor blackColor];
        _chineseField.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        _chineseField.placeholder = @"输入中文名称";
        _chineseField.font = [UIFont systemFontOfSize:17];
        _chineseField.textAlignment = NSTextAlignmentCenter;
    }
    return _chineseField;
}
- (UITextField *)englishField{
    if (!_englishField) {
        _englishField = [UITextField new];
        _englishField.borderStyle = UITextBorderStyleRoundedRect;
        _englishField.textColor =[UIColor blackColor];
        _englishField.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        _englishField.placeholder = @"输入英文名称";
        _englishField.font = [UIFont systemFontOfSize:17];
        _englishField.textAlignment = NSTextAlignmentCenter;
    }
    return _englishField;
}
- (YYAnimatedImageView *)imgView{
    if(!_imgView) {
        _imgView = [YYAnimatedImageView new];
        _imgView.contentMode = UIViewContentModeScaleAspectFill;
        _imgView.backgroundColor = [UIColor qmui_randomColor];
        _imgView.userInteractionEnabled = YES;
    }
    return _imgView;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
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
