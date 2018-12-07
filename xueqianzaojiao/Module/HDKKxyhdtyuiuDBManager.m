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
