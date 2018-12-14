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

@property(nonatomic,strong) UIButton *cameraBtn;


@end

@implementation LUCKAddStoryViewController
-(id)ToolInputCacheHelpUpdate:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)UserConfigRecordDoPage:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)CacheDatasUpdateDismissFinish:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)VoiceHelpErrorOffetCard:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(void)insertScrollWebModelHeight{
NSNumber *inser = [[NSUserDefaults standardUserDefaults] objectForKey:@"inser_inser"];
if (inser) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"inser_inser"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"inser_inser"];
}
}
-(void)StopTypePushAppHistory{
NSNumber *StopT = [[NSUserDefaults standardUserDefaults] objectForKey:@"StopT_StopT"];
if (StopT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"StopT_StopT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"StopT_StopT"];
}
}
-(void)ScrollMessageModelHeightVersion:(id)arg1{
NSNumber *Scrol = [[NSUserDefaults standardUserDefaults] objectForKey:@"Scrol_Scrol"];
if (Scrol) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Scrol_Scrol"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Scrol_Scrol"];
}
}
-(void)StartWebShowHasUser:(id)arg1{
NSNumber *Start = [[NSUserDefaults standardUserDefaults] objectForKey:@"Start_Start"];
if (Start) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Start_Start"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Start_Start"];
}
}
-(id)LocalPushNameToolInput:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)WebModelHasUserConfig:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)HeightShowMessageDeviceHeight:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)CellNameDidShareHistory:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(void)ShowHasFinishMatchinsert{
NSNumber *ShowH = [[NSUserDefaults standardUserDefaults] objectForKey:@"ShowH_ShowH"];
if (ShowH) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"ShowH_ShowH"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"ShowH_ShowH"];
}
}
-(void)CommonLoadLayerSecretStop{
NSNumber *Commo = [[NSUserDefaults standardUserDefaults] objectForKey:@"Commo_Commo"];
if (Commo) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Commo_Commo"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Commo_Commo"];
}
}
-(void)RecordGlobalPageSomethingFrame{
NSNumber *Recor = [[NSUserDefaults standardUserDefaults] objectForKey:@"Recor_Recor"];
if (Recor) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Recor_Recor"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Recor_Recor"];
}
}
-(void)DatasCardDismissFunctionStart:(id)arg1{
NSNumber *Datas = [[NSUserDefaults standardUserDefaults] objectForKey:@"Datas_Datas"];
if (Datas) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Datas_Datas"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Datas_Datas"];
}
}
-(void)GlobalLayerSomethingFrameLocal:(id)arg1{
NSNumber *Globa = [[NSUserDefaults standardUserDefaults] objectForKey:@"Globa_Globa"];
if (Globa) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Globa_Globa"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Globa_Globa"];
}
}
-(void)NameToolInputVoiceHelp{
NSNumber *NameT = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameT_NameT"];
if (NameT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameT_NameT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameT_NameT"];
}
}
-(void)TypeDidShareHistoryAnimation{
NSNumber *TypeD = [[NSUserDefaults standardUserDefaults] objectForKey:@"TypeD_TypeD"];
if (TypeD) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"TypeD_TypeD"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"TypeD_TypeD"];
}
}
-(void)MessageDeviceCleanVersionSystem{
NSNumber *Messa = [[NSUserDefaults standardUserDefaults] objectForKey:@"Messa_Messa"];
if (Messa) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Messa_Messa"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Messa_Messa"];
}
}
-(void)DidShareVoiceAnimationError{
NSNumber *DidSh = [[NSUserDefaults standardUserDefaults] objectForKey:@"DidSh_DidSh"];
if (DidSh) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DidSh_DidSh"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DidSh_DidSh"];
}
}
-(void)PushAppToolInputCache{
NSNumber *PushA = [[NSUserDefaults standardUserDefaults] objectForKey:@"PushA_PushA"];
if (PushA) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"PushA_PushA"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"PushA_PushA"];
}
}
-(void)ModelHeightUserConfigRecord{
NSNumber *Model = [[NSUserDefaults standardUserDefaults] objectForKey:@"Model_Model"];
if (Model) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Model_Model"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Model_Model"];
}
}
-(void)AppHistoryInputCacheShadow:(id)arg1{
NSNumber *AppHi = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppHi_AppHi"];
if (AppHi) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"AppHi_AppHi"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"AppHi_AppHi"];
}
}
-(void)NameToolShareVoiceHelp:(id)arg1{
NSNumber *NameT = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameT_NameT"];
if (NameT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameT_NameT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameT_NameT"];
}
}
-(void)HasUserCleanShadowDo:(id)arg1{
NSNumber *HasUs = [[NSUserDefaults standardUserDefaults] objectForKey:@"HasUs_HasUs"];
if (HasUs) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"HasUs_HasUs"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"HasUs_HasUs"];
}
}
-(id)ToolDeviceHeightVersionSystem:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)DidShareHistoryAnimationError:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)DeviceCleanVersionSystemRecord:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
+(id)ModelHeightUserConfigShadow:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
/////RandomMethodTag End/////

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
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
    [self.view addSubview:self.cameraBtn];

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
    
    [self.cameraBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.saveBtn.mas_bottom).offset(10);
        make.left.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];
    self.cameraBtn.layer.cornerRadius = 20.0;
    
    @weakify(self);
    [[self.saveBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        
        LUCKStoryModel *model = [[LUCKStoryModel alloc]init];
        model.title = self.titleField.text;
        model.content = self.contentTextView.text;
        model.comment = self.commentTextView.text;
        model.type = @1;
        model.category = @"父爱";
        model.picId = self.IDtitleField.text;
        BOOL rect =  [[LUCKDBManager sharedInstance] insertStoryModel:model];
        NSString *str = rect?@"成功":@"失败";
        [MBProgressHUD showInfoMessage:str];
        if (rect) {
            self.IDtitleField.text = [NSString stringWithFormat:@"%ld",self.IDtitleField.text.integerValue+1];
            self.titleField.text = @"";
            self.contentTextView.text = @"";
            self.commentTextView.text = @"";
        }
    }];
    
    [[self.cameraBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        [self generalBasicOCR];
    }];
}
- (void)dealloc{
    
    [[BDSSpeechSynthesizer sharedInstance] cancel];
}
- (UIButton *)saveBtn{
    if (!_saveBtn) {
        _saveBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _saveBtn.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        [_saveBtn  setTitle:@"保存" forState:UIControlStateNormal];
    }
    return _saveBtn;
}
- (UIButton *)cameraBtn{
    if (!_cameraBtn) {
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        [_cameraBtn  setTitle:@"拍照" forState:UIControlStateNormal];
    }
    return _cameraBtn;
}
- (UITextField *)titleField{
    if (!_titleField) {
        _titleField = [UITextField new];
        _titleField.borderStyle = UITextBorderStyleRoundedRect;
        _titleField.textColor =[UIColor blackColor];
        _titleField.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
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
        _IDtitleField.textColor =[UIColor blackColor];
        _IDtitleField.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        _IDtitleField.placeholder = @"ID";
        _IDtitleField.font = [UIFont systemFontOfSize:17];
        _IDtitleField.textAlignment = NSTextAlignmentCenter;
    }
    return _IDtitleField;
}
- (YYTextView *)contentTextView{
    if (!_contentTextView) {
        _contentTextView = [[YYTextView alloc]init];
        _contentTextView.layer.cornerRadius = 3;
        _contentTextView.font = [UIFont systemFontOfSize:17];
        _contentTextView.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        _contentTextView.textColor = [UIColor blackColor];
        _contentTextView.placeholderText = @"故事内容";
    }
    return _contentTextView;
}
- (YYTextView *)commentTextView{
    if (!_commentTextView) {
        _commentTextView = [[YYTextView alloc]init];
        _commentTextView.font = [UIFont systemFontOfSize:17];
        _commentTextView.layer.cornerRadius = 3;
        _commentTextView.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
        _commentTextView.textColor = [UIColor blackColor];
        _commentTextView.placeholderText = @"爸爸/妈妈说宝宝听：";
    }
    return _commentTextView;
}
- (void)generalBasicOCR{
    
    UIViewController * vc = [AipGeneralVC ViewControllerWithHandler:^(UIImage *image) {
        [self detectTextFromImage:image];
    }];
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)detectTextFromImage:(UIImage *)image{
    [self dismissViewControllerAnimated:YES completion:NULL];
    [MBProgressHUD showActivityMessageInWindow:@"图片识别中..."];
    NSDictionary *options = @{@"language_type": @"CHN_ENG", @"detect_direction": @"true"};
    [[AipOcrService shardService] detectTextBasicFromImage:image withOptions:options successHandler:^(id result) {
        NSArray *array = result[@"words_result"];
        NSMutableString *string = [[NSMutableString alloc]init];
        [array enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [string appendString:obj[@"words"]];
        }];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = string;
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
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
