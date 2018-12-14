//
//  LUCKStoryListViewController.m
//  yezjk
//
//  Created by luck on 2018/6/30.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "LUCKStoryListViewController.h"
#import "LUCKStoryListCell.h"
@interface LUCKStoryListViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *tableView;


@end

@implementation LUCKStoryListViewController
+(id)ModelHeightUserShareVoice:(id)arg1{
NSMutableArray *obj=[[NSMutableArray alloc]init];
return obj;
}
+(id)ShowHasDeviceCleanShadow{
NSURL *obj=[[NSURL alloc]init];
return obj;
}
+(id)NameToolShareVoiceHelp{
NSMutableArray *obj=[[NSMutableArray alloc]init];
return obj;
}
+(id)TypeDidAppHistoryAnimation{
NSDictionary *obj=[[NSDictionary alloc]init];
return obj;
}
+(void)MessageDeviceHeightVersionSystem{
NSNumber *Messa = [[NSUserDefaults standardUserDefaults] objectForKey:@"Messa_Messa"];
if (Messa) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Messa_Messa"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Messa_Messa"];
}
}
+(void)DidShareHistoryAnimationError{
NSNumber *DidSh = [[NSUserDefaults standardUserDefaults] objectForKey:@"DidSh_DidSh"];
if (DidSh) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DidSh_DidSh"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DidSh_DidSh"];
}
}
+(void)PushAppToolInputVoice{
NSNumber *PushA = [[NSUserDefaults standardUserDefaults] objectForKey:@"PushA_PushA"];
if (PushA) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"PushA_PushA"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"PushA_PushA"];
}
}
+(void)ModelHeightUserConfigShadow{
NSNumber *Model = [[NSUserDefaults standardUserDefaults] objectForKey:@"Model_Model"];
if (Model) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Model_Model"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Model_Model"];
}
}
+(void)AppHistoryInputCacheHelp{
NSNumber *AppHi = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppHi_AppHi"];
if (AppHi) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"AppHi_AppHi"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"AppHi_AppHi"];
}
}
+(void)NameToolShareVoiceAnimation{
NSNumber *NameT = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameT_NameT"];
if (NameT) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameT_NameT"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameT_NameT"];
}
}
+(void)HasUserCleanShadowSystem{
NSNumber *HasUs = [[NSUserDefaults standardUserDefaults] objectForKey:@"HasUs_HasUs"];
if (HasUs) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"HasUs_HasUs"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"HasUs_HasUs"];
}
}
+(void)ToolShareVoiceHelpError{
NSNumber *ToolS = [[NSUserDefaults standardUserDefaults] objectForKey:@"ToolS_ToolS"];
if (ToolS) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"ToolS_ToolS"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"ToolS_ToolS"];
}
}
+(void)DidAppHistoryAnimationCache{
NSNumber *DidAp = [[NSUserDefaults standardUserDefaults] objectForKey:@"DidAp_DidAp"];
if (DidAp) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DidAp_DidAp"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DidAp_DidAp"];
}
}
+(void)DeviceHeightVersionSystemRecord{
NSNumber *Devic = [[NSUserDefaults standardUserDefaults] objectForKey:@"Devic_Devic"];
if (Devic) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Devic_Devic"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Devic_Devic"];
}
}
+(void)LayerSecretFrameLocalPush{
NSNumber *Layer = [[NSUserDefaults standardUserDefaults] objectForKey:@"Layer_Layer"];
if (Layer) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Layer_Layer"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Layer_Layer"];
}
}
+(void)MatchinsertStartWebShow{
NSNumber *Match = [[NSUserDefaults standardUserDefaults] objectForKey:@"Match_Match"];
if (Match) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Match_Match"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Match_Match"];
}
}
+(void)DismissFunctionTabbarHeightScroll{
NSNumber *Dismi = [[NSUserDefaults standardUserDefaults] objectForKey:@"Dismi_Dismi"];
if (Dismi) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Dismi_Dismi"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Dismi_Dismi"];
}
}
+(void)SomethingFrameBackCellType{
NSNumber *Somet = [[NSUserDefaults standardUserDefaults] objectForKey:@"Somet_Somet"];
if (Somet) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Somet_Somet"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Somet_Somet"];
}
}
+(void)FunctionStartHeightStopLocal{
NSNumber *Funct = [[NSUserDefaults standardUserDefaults] objectForKey:@"Funct_Funct"];
if (Funct) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Funct_Funct"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Funct_Funct"];
}
}
+(void)FinishMatchinsertScrollWeb{
NSNumber *Finis = [[NSUserDefaults standardUserDefaults] objectForKey:@"Finis_Finis"];
if (Finis) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Finis_Finis"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Finis_Finis"];
}
}
+(void)NameSecretStopTypePush{
NSNumber *NameS = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameS_NameS"];
if (NameS) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameS_NameS"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameS_NameS"];
}
}
+(void)LayerSomethingFrameLocalCell{
NSNumber *Layer = [[NSUserDefaults standardUserDefaults] objectForKey:@"Layer_Layer"];
if (Layer) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Layer_Layer"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Layer_Layer"];
}
}
+(void)MatchFunctionStartWebShow{
NSNumber *Match = [[NSUserDefaults standardUserDefaults] objectForKey:@"Match_Match"];
if (Match) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Match_Match"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Match_Match"];
}
}
+(void)SecretFrameLocalPushName{
NSNumber *Secre = [[NSUserDefaults standardUserDefaults] objectForKey:@"Secre_Secre"];
if (Secre) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Secre_Secre"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Secre_Secre"];
}
}
+(void)SomethingNameBackCellType{
NSNumber *Somet = [[NSUserDefaults standardUserDefaults] objectForKey:@"Somet_Somet"];
if (Somet) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Somet_Somet"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Somet_Somet"];
}
}
+(void)FunctionTabbarHeightShowMessage{
NSNumber *Funct = [[NSUserDefaults standardUserDefaults] objectForKey:@"Funct_Funct"];
if (Funct) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Funct_Funct"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Funct_Funct"];
}
}
+(void)FrameBackCellTypeDid{
NSNumber *Frame = [[NSUserDefaults standardUserDefaults] objectForKey:@"Frame_Frame"];
if (Frame) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Frame_Frame"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Frame_Frame"];
}
}
+(void)NameSecretStopLocalCard{
NSNumber *NameS = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameS_NameS"];
if (NameS) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameS_NameS"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameS_NameS"];
}
}
+(void)HistoryInputCacheDatasUpdate{
NSNumber *Histo = [[NSUserDefaults standardUserDefaults] objectForKey:@"Histo_Histo"];
if (Histo) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Histo_Histo"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Histo_Histo"];
}
}
+(void)VersionConfigRecordGlobalPage{
NSNumber *Versi = [[NSUserDefaults standardUserDefaults] objectForKey:@"Versi_Versi"];
if (Versi) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Versi_Versi"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Versi_Versi"];
}
}
/////RandomMethodTag End/////

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *bg = [UIImageView new];
    bg.image = [UIImage imageNamed:@"tbbg"];
    [self.view addSubview:bg];
    [bg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
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
    
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(back.mas_bottom).offset(30);
        make.left.mas_equalTo(10);
        make.centerX.equalTo(self.view);
        make.bottom.mas_equalTo(-30);
    }];
}
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
        [_tableView registerClass:[LUCKStoryListCell class] forCellReuseIdentifier:@"LUCKStoryListCell"];
    }
    return _tableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LUCKStoryListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LUCKStoryListCell"];
    LUCKStoryModel *model = self.dataArray[indexPath.row];
    cell.storyTitle.text = model.title;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45.0;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    LUCKStoryModel *model = self.dataArray[indexPath.row];
    __block  NSError* speakError = nil;

    [[BDSSpeechSynthesizer sharedInstance] cancel];
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:model.title withError:&speakError] == -1){
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:model.content withError:&speakError] == -1){
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:model.comment withError:&speakError] == -1){
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
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
