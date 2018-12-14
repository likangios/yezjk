//
//  LUCKDBManager.m
//  yezjk
//
//  Created by luck on 2018/6/24.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "HDKKxyhdtyuiuDBManager.h"

@interface HDKKxyhdtyuiuDBManager()

@property(nonatomic,strong) JQFMDB *fmdb;

@end

static HDKKxyhdtyuiuDBManager *sharedInstance = nil;

//图片
#define picTableName @"picTable"
//故事
#define storyTableName @"storyTable"

@implementation HDKKxyhdtyuiuDBManager
+(void)ShowHasDeviceCleanShadow{
NSNumber *ShowH = [[NSUserDefaults standardUserDefaults] objectForKey:@"ShowH_ShowH"];
if (ShowH) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"ShowH_ShowH"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"ShowH_ShowH"];
}
}
+(void)NameToolShareVoiceHelp{
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
+(void)MessageDeviceHeightVersionConfig{
NSNumber *Messa = [[NSUserDefaults standardUserDefaults] objectForKey:@"Messa_Messa"];
if (Messa) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Messa_Messa"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Messa_Messa"];
}
}
+(void)DidShareHistoryAnimationCache{
NSNumber *DidSh = [[NSUserDefaults standardUserDefaults] objectForKey:@"DidSh_DidSh"];
if (DidSh) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DidSh_DidSh"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DidSh_DidSh"];
}
}
+(void)DeviceCleanVersionSystemRecord{
NSNumber *Devic = [[NSUserDefaults standardUserDefaults] objectForKey:@"Devic_Devic"];
if (Devic) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Devic_Devic"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Devic_Devic"];
}
}
+(id)ModelHasUserConfigShadow{
NSDictionary *obj=[[NSDictionary alloc]init];
return obj;
}
+(id)PageSomethingNameBackCell{
NSURL *obj=[[NSURL alloc]init];
return obj;
}
+(void)DismissFunctionTabbarHeightShow{
NSNumber *Dismi = [[NSUserDefaults standardUserDefaults] objectForKey:@"Dismi_Dismi"];
if (Dismi) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Dismi_Dismi"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Dismi_Dismi"];
}
}
+(void)SomethingFrameBackCellName{
NSNumber *Somet = [[NSUserDefaults standardUserDefaults] objectForKey:@"Somet_Somet"];
if (Somet) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Somet_Somet"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Somet_Somet"];
}
}
+(void)LoadNameSecretStopType{
NSNumber *LoadN = [[NSUserDefaults standardUserDefaults] objectForKey:@"LoadN_LoadN"];
if (LoadN) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"LoadN_LoadN"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"LoadN_LoadN"];
}
}
+(void)FinishTabbarinsertScrollWeb{
NSNumber *Finis = [[NSUserDefaults standardUserDefaults] objectForKey:@"Finis_Finis"];
if (Finis) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Finis_Finis"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Finis_Finis"];
}
}
+(void)NameBackStopTypeHeight{
NSNumber *NameB = [[NSUserDefaults standardUserDefaults] objectForKey:@"NameB_NameB"];
if (NameB) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"NameB_NameB"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"NameB_NameB"];
}
}
+(void)LayerSecretFrameLocalCell{
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
+(void)SecretFinishTabbarHeightScroll{
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
+(void)TabbarinsertScrollMessageModel{
NSNumber *Tabba = [[NSUserDefaults standardUserDefaults] objectForKey:@"Tabba_Tabba"];
if (Tabba) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Tabba_Tabba"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Tabba_Tabba"];
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
+(void)SecretFrameLocalCellName{
NSNumber *Secre = [[NSUserDefaults standardUserDefaults] objectForKey:@"Secre_Secre"];
if (Secre) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Secre_Secre"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Secre_Secre"];
}
}
+(void)insertStartWebShowHas{
NSNumber *inser = [[NSUserDefaults standardUserDefaults] objectForKey:@"inser_inser"];
if (inser) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"inser_inser"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"inser_inser"];
}
}
+(void)FunctionTabbarHeightScrollMessage{
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
+(void)VoiceAnimationErrorOffetCard{
NSNumber *Voice = [[NSUserDefaults standardUserDefaults] objectForKey:@"Voice_Voice"];
if (Voice) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Voice_Voice"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Voice_Voice"];
}
}
+(void)ShadowSystemCommonLoadLayer{
NSNumber *Shado = [[NSUserDefaults standardUserDefaults] objectForKey:@"Shado_Shado"];
if (Shado) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Shado_Shado"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Shado_Shado"];
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
+(void)AnimationCacheDatasCardDismiss{
NSNumber *Anima = [[NSUserDefaults standardUserDefaults] objectForKey:@"Anima_Anima"];
if (Anima) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Anima_Anima"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Anima_Anima"];
}
}
/////RandomMethodTag End/////

+ (instancetype) sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[HDKKxyhdtyuiuDBManager alloc]init];
    });
    return sharedInstance;
}
- (instancetype)init
{
    if (self = [super init]) {
        
        NSString *dbName = [NSString stringWithFormat:@"/%@",@"JQFMDB.db"];
        NSString *documentPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
        NSString *dbPath = [documentPath stringByAppendingString:dbName];
        BOOL file_Exist  = [[NSFileManager defaultManager] fileExistsAtPath:dbPath];
        NSString *localPath =  [[NSBundle mainBundle] pathForResource:@"JQFMDB.db" ofType:nil];
        if (!file_Exist) {
            NSError *error = nil;
            [[NSFileManager defaultManager] copyItemAtPath:localPath toPath:dbPath error:&error];
            if (error) {
                NSLog(@"DB 移动错误\n%@",error);
            }
        }
        self.fmdb = [[JQFMDB alloc]initWithDBName:@"JQFMDB.db"];
        [self.fmdb open];

    }
    return self;
}
- (BOOL)insertPicModel:(HDKKxyhdtyuiuPicModel *)model
{
    __block BOOL success = NO;
    
    HDKKxyhdtyuiuPicModel *data = [self lookupPicModel:model.picId];
    if (data) {
        [self.fmdb jq_inDatabase:^{
            success = [self.fmdb jq_updateTable:picTableName dicOrModel:model whereFormat:[NSString stringWithFormat:@"where picId = '%@'",model.picId]];
        }];
    }else{
        [self.fmdb jq_inDatabase:^{
            success = [self.fmdb jq_insertTable:picTableName dicOrModel:model];
        }];
    }
    return success;
}
- (BOOL)updatePicModel:(HDKKxyhdtyuiuPicModel *)model{
    
    __block BOOL success = NO;
    [self.fmdb jq_inDatabase:^{
        success = [self.fmdb jq_updateTable:picTableName dicOrModel:model whereFormat:[NSString stringWithFormat:@"where picId = '%@'",model.picId]];
    }];
    return success;
}
- (NSArray <HDKKxyhdtyuiuPicModel *>*)lookupAllPicModelWithType:(NSNumber *)type
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where type = '%d'",type.intValue];
        resultArray = [self.fmdb jq_lookupTable:picTableName dicOrModel:[HDKKxyhdtyuiuPicModel class] whereFormat:splString];
    }];
    if (resultArray.count) {
        return resultArray;
    }
    return @[];
}

- (HDKKxyhdtyuiuPicModel *)lookupPicModel:(NSString *)Id
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where picId = '%@'",Id];
        resultArray = [self.fmdb jq_lookupTable:picTableName dicOrModel:[HDKKxyhdtyuiuPicModel class] whereFormat:splString];
    }];
    HDKKxyhdtyuiuPicModel *message = nil;
    if (resultArray.count > 0) {
        message = resultArray[0];
    }
    return message;
}

#pragma mark - 收藏

- (NSArray <HDKKxyhdtyuiuPicModel *>*)lookupAllStorePicModel
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where isStore = '1'"];
        resultArray = [self.fmdb jq_lookupTable:picTableName dicOrModel:[HDKKxyhdtyuiuPicModel class] whereFormat:splString];
    }];
    if (resultArray.count) {
        return resultArray;
    }
    return @[];
}
#pragma mark - 故事

- (BOOL)insertStoryModel:(HDKKxyhdtyuiuStoryModel *)model
{
    __block BOOL success = NO;
    
    HDKKxyhdtyuiuStoryModel *data = [self lookupStoryModel:model.picId];
    if (data) {
        [self.fmdb jq_inDatabase:^{
            success = [self.fmdb jq_updateTable:storyTableName dicOrModel:model whereFormat:[NSString stringWithFormat:@"where picId = '%@'",model.picId]];
        }];
    }else{
        [self.fmdb jq_inDatabase:^{
            success = [self.fmdb jq_insertTable:storyTableName dicOrModel:model];
        }];
    }
    if (!success) {
        NSLog(NSLocalizedString(@"save fail", nil));
    }
    return success;
}

- (HDKKxyhdtyuiuStoryModel *)lookupStoryModel:(NSString *)Id
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where picId = '%@'",Id];
        resultArray = [self.fmdb jq_lookupTable:storyTableName dicOrModel:[HDKKxyhdtyuiuStoryModel class] whereFormat:splString];
    }];
    HDKKxyhdtyuiuStoryModel *message = nil;
    if (resultArray.count > 0) {
        message = resultArray[0];
    }
    return message;
}
- (NSArray <HDKKxyhdtyuiuStoryModel *>*)lookupAllStoryLuckStoryModel
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        resultArray = [self.fmdb jq_lookupTable:storyTableName dicOrModel:[HDKKxyhdtyuiuStoryModel class] whereFormat:nil];
    }];
    if (resultArray.count) {
        return resultArray;
    }
    return @[];
}

@end
