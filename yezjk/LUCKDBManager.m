//
//  LUCKDBManager.m
//  yezjk
//
//  Created by luck on 2018/6/24.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "LUCKDBManager.h"

@interface LUCKDBManager()

@property(nonatomic,strong) JQFMDB *fmdb;

@end

static LUCKDBManager *sharedInstance = nil;

//图片
#define picTableName @"picTable"
//故事
#define storyTableName @"storyTable"

@implementation LUCKDBManager

+ (instancetype) sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LUCKDBManager alloc]init];
    });
    return sharedInstance;
}
-(void)creatData{
    if (![self lookupAllPicModelWithType:@1].count) {
        NSArray *array = [self getDataArrayWithType:1];
        [array enumerateObjectsUsingBlock:^(PicModel * obj, NSUInteger idx, BOOL * _Nonnull stop) {
            BOOL rect = [[LUCKDBManager sharedInstance] insertPicModel:obj];
            NSLog(@"%@ 卡 加入%@",obj.title,rect == YES ?@"成功":@"失败");
        }];
    }
    if (![self lookupAllPicModelWithType:@2].count) {
    NSArray *array2 = [self getDataArrayWithType:2];
    [array2 enumerateObjectsUsingBlock:^(PicModel * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        BOOL rect = [[LUCKDBManager sharedInstance] insertPicModel:obj];
        NSLog(@"%@ 卡 加入%@",obj.title,rect == YES ?@"成功":@"失败");
    }];
    }
}
- (NSArray *)getDataArrayWithType:(NSInteger)type{
    NSArray *titles2 =@[@"海星",@"大熊猫",@"豹",@"狮子",@"老虎",@"狼",@"狐狸",@"考拉",@"松鼠",
                        @"老鼠",@"刺猬",@"猪",@"鸭子",@"兔子",@"小鸡",@"狗",@"猫",@"瓢虫",
                        @"蜜蜂",@"蚂蚁",@"苍蝇",@"蜻蜓",@"蝴蝶",@"青蛙",@"乌龟",@"水母",@"金鱼",
                        @"龙虾",@"螃蟹",@"海豚",@"孔雀",@"啄木鸟",@"鹦鹉",@"猫头鹰",@"企鹅",@"天鹅"
                        ,@"蛇",@"变色龙",@"骆驼",@"长颈鹿",@"犀牛",@"斑马",@"大象",@"黑猩猩",@"马",
                        @"奶牛",@"山羊",@"猴子"];
    NSArray *englishtTitles2 = @[@"starfish",@"panda",@"leopard",@"lion",@"tiger",@"wolf",@"fox",@"koala",@"squirrel",
                                 @"mouse",@"hedgehog",@"pig",@"duck",@"rabbit",@"chick",@"dog",@"cat",@"ladybug",
                                 @"bee",@"ant",@"fly",@"dragonfly",@"butterfly",@"frog",@"tortoise",@"jellyfish",@"goldfish",
                                 @"lobster",@"crab",@"dolphin",@"peacock",@"woodpecker",@"parrot",@"owl",@"penguin",@"swan",
                                 @"snack",@"chameleon",@"camel",@"giraffe",@"rhinoceros",@"zebra",@"elephant",@"chimpanzee",@"horse",
                                 @"cow",@"goat",@"monkey"];
    
    NSArray *titles = @[@"苹果",@"香蕉",@"草莓",@"葡萄",@"橙子",@"樱桃",@"柠檬",@"菠萝",@"西瓜",
                        @"哈密瓜",@"芒果",@"梨",@"蓝莓",@"荔枝",@"李子",@"榴莲",@"猕猴桃",@"木瓜",
                        @"石榴",@"柿子",@"杨桃",@"无花果",@"杏",@"杨梅",@"火龙果",@"山竹",@"百香果",
                        @"桃",@"西红柿",@"花菜",@"洋葱",@"豌豆",@"甜椒",@"芹菜",@"莲藕",@"萝卜",
                        @"黄瓜",@"胡萝卜",@"茄子",@"西蓝花",@"蘑菇",@"南瓜",@"紫甘蓝",@"卷心菜",@"苦瓜",
                        @"辣椒",@"大白菜",@"土豆"];
    
    NSArray *englishtTitles = @[@"apple",@"banner",@"strawberry",@"grape",@"orange",@"cherry",@"lemon",@"pineapple",@"watermelon",
                                @"hami melon",@"mango",@"pear",@"blueberry",@"litchi",@"plum",@"durian",@"kiwi fruit",@"papaya",
                                @"pomegranate",@"persimmon",@"star fruit",@"fig",@"apricot",@"waxberry",@"dragon fruit",@"mangosteen",@"passion fruit",
                                @"peach",@"tomato",@"cauliflower",@"onion",@"pea",@"bell pepper",@"celery",@"lotus root",@"radish",
                                @"cucumber",@"carrot",@"eggplant",@"broccoli",@"mushroom",@"pumpkin",@"purple cabbage",@"cabbage",@"balsam pear",
                                @"chili",@"Chinese cabbage",@"potato"];
    NSMutableArray *dataArray = [NSMutableArray array];
    
    for (int i = 0; i<titles.count; i++) {
        PicModel *model = [[PicModel alloc]init];
        if (type == 1) {
            
            model.title = titles[i];
            model.word = englishtTitles[i];
            NSString *name = [NSString stringWithFormat:@"guoshuka_%d",i+1];
            model.imageName = name;
            model.type = @1;
            model.isStore = @0;
            model.picId = [NSString stringWithFormat:@"%d",i+1000];
            
        }
        else if (type == 2){
            model.title = titles2[i];
            model.word = englishtTitles2[i];
            NSString *name = [NSString stringWithFormat:@"dongwu_%d",i+1];
            model.imageName = name;
            model.type = @2;
            model.isStore = @0;
            model.picId = [NSString stringWithFormat:@"%d",i+2000];
        }
        [dataArray addObject:model];
    }
    return  dataArray;
}
- (instancetype)init
{
    if (self = [super init]) {
        
        self.fmdb = [JQFMDB shareDatabase];
        [self.fmdb open];
        //图片
        if (![self.fmdb jq_isExistTable:picTableName]) {
            [self.fmdb jq_inDatabase:^{
                [self.fmdb jq_createTable:picTableName dicOrModel:[PicModel class] excludeName:nil];
            }];
        }
        //故事
        if (![self.fmdb jq_isExistTable:storyTableName]) {
            [self.fmdb jq_inDatabase:^{
                [self.fmdb jq_createTable:storyTableName dicOrModel:[LUCKStoryModel class] excludeName:nil];
            }];
        }
        
        /*
        //收藏表
        if (![self.fmdb jq_isExistTable:storeTableName]) {
            [self.fmdb jq_inDatabase:^{
                [self.fmdb jq_createTable:storeTableName dicOrModel:[JKDSQuestionModel class] excludeName:ignorKeys];
            }];
        }
        //浏览记录
        if (![self.fmdb jq_isExistTable:scanRecordTableName]) {
            [self.fmdb jq_inDatabase:^{
                [self.fmdb jq_createTable:scanRecordTableName dicOrModel:[JKDSCircleModel class] excludeName:nil];
            }];
        }
        */
    }
    return self;
}
- (BOOL)insertPicModel:(PicModel *)model
{
    __block BOOL success = NO;
    
    PicModel *data = [self lookupPicModel:model.picId];
    if (data) {
        [self.fmdb jq_inDatabase:^{
            success = [self.fmdb jq_updateTable:picTableName dicOrModel:model whereFormat:[NSString stringWithFormat:@"where picId = '%@'",model.picId]];
        }];
    }else{
        [self.fmdb jq_inDatabase:^{
            success = [self.fmdb jq_insertTable:picTableName dicOrModel:model];
        }];
    }
    if (!success) {
        NSLog(@"保存图片失败");
    }
    return success;
}
- (BOOL)updatePicModel:(PicModel *)model{
    
    __block BOOL success = NO;
    [self.fmdb jq_inDatabase:^{
        success = [self.fmdb jq_updateTable:picTableName dicOrModel:model whereFormat:[NSString stringWithFormat:@"where picId = '%@'",model.picId]];
    }];
    return success;
}
- (NSArray <PicModel *>*)lookupAllPicModelWithType:(NSNumber *)type
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where type = '%d'",type.intValue];
        resultArray = [self.fmdb jq_lookupTable:picTableName dicOrModel:[PicModel class] whereFormat:splString];
    }];
    if (resultArray.count) {
        return resultArray;
    }
    return @[];
}

- (PicModel *)lookupPicModel:(NSString *)Id
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where picId = '%@'",Id];
        resultArray = [self.fmdb jq_lookupTable:picTableName dicOrModel:[PicModel class] whereFormat:splString];
    }];
    PicModel *message = nil;
    if (resultArray.count > 0) {
        message = resultArray[0];
    }
    return message;
}

#pragma mark - 收藏

- (NSArray <PicModel *>*)lookupAllStorePicModel
{
    __block NSArray *resultArray = [NSArray array];
    [self.fmdb jq_inDatabase:^{
        NSString *splString = [NSString stringWithFormat:@"where isStore = '1'"];
        resultArray = [self.fmdb jq_lookupTable:picTableName dicOrModel:[PicModel class] whereFormat:splString];
    }];
    if (resultArray.count) {
        return resultArray;
    }
    return @[];
}


@end
