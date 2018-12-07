//
//  LUCKDBManager.h
//  yezjk
//
//  Created by luck on 2018/6/24.
//  Copyright © 2018年 luck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDKKxyhdtyuiuDBManager : NSObject
+ (instancetype) sharedInstance;

- (BOOL)insertPicModel:(HDKKxyhdtyuiuPicModel *)model;

- (BOOL)updatePicModel:(HDKKxyhdtyuiuPicModel *)model;

- (HDKKxyhdtyuiuPicModel *)lookupPicModel:(NSString *)Id;


- (NSArray <HDKKxyhdtyuiuPicModel *>*)lookupAllPicModelWithType:(NSNumber *)type;

- (NSArray <HDKKxyhdtyuiuPicModel *>*)lookupAllStorePicModel;

- (BOOL)insertStoryModel:(HDKKxyhdtyuiuStoryModel *)model;

- (HDKKxyhdtyuiuStoryModel *)lookupStoryModel:(NSString *)Id;

- (NSArray <HDKKxyhdtyuiuStoryModel *>*)lookupAllStoryLuckStoryModel;

@end
