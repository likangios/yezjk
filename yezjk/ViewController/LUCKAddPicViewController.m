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
    
    
    UILabel *tip = [UILabel new];
    tip.text = @"点击选择图片";
    tip.textColor = [UIColor blackColor];
    tip.backgroundColor = [UIColor grayColor];
    tip.textAlignment = NSTextAlignmentCenter;
    tip.userInteractionEnabled = NO;
    [self.view addSubview:tip];
    [tip mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(kScreenWidth * 0.8);
        make.centerX.equalTo(self.view);
        make.top.mas_equalTo(80);
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
        
        if (!self.chineseField.text.length || !self.englishField.text.length || !self.imgView.image) {
            [MBProgressHUD showInfoMessage:@"图片/中文/英文不完整"];
            return ;
        }
        //给图片以日期命名
        NSDateFormatter * fmt = [[NSDateFormatter alloc] init] ;
        [fmt setDateFormat:@"yyyy/MM/dd"];
        NSDateFormatter * fmthsm = [[NSDateFormatter alloc] init] ;
        [fmthsm setDateFormat:@"yyyyMMddHHmmss"];
        NSString * imagename = [[NSString alloc]initWithFormat:@"%@.png",[fmthsm stringFromDate:[NSDate date]]];
        //调用方法保存图片
        [self savescanresultimage:self.imgView.image imagename:imagename];
        NSArray *customArray = [[LUCKDBManager sharedInstance] lookupAllPicModelWithType:@3];
        PicModel *lastModel = customArray.lastObject;
        PicModel *model = [[PicModel alloc]init];
            model.title = self.chineseField.text;
            model.word = self.englishField.text;
            model.imageName = imagename;
            model.isCustom = YES;
            model.type = @3;
            model.isStore = @0;
        if (lastModel) {
            model.picId = [NSString stringWithFormat:@"%ld",lastModel.picId.integerValue + 1];
        }
        else{
            model.picId = @"3000";
        }
        BOOL rect =  [[LUCKDBManager sharedInstance] insertPicModel:model];
        if (rect) {
            [MBProgressHUD showInfoMessage:@"添加成功"];
            self.imgView.image = nil;
            self.chineseField.text = nil;
            self.englishField.text = nil;
        }
    }];
    

    
}
-(BOOL)savescanresultimage:(UIImage *)resultimage imagename:(NSString *)strimagename
{
    NSData *imageData = UIImagePNGRepresentation(resultimage);
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:strimagename]; //Add the file name
   BOOL success =  [imageData writeToFile:filePath atomically:YES];
    return success;
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
        _saveBtn.backgroundColor = [UIColor colorWithHexString:@"000000"];
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
        _imgView.backgroundColor = [UIColor clearColor];
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
