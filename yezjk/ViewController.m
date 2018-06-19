//
//  ViewController.m
//  yezjk
//
//  Created by luck on 2018/6/18.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import "BDSSpeechSynthesizer.h"
#import "PicModel.h"
#import <YYKit.h>



@interface ViewController ()<BDSSpeechSynthesizerDelegate>
@property(nonatomic,strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = [NSMutableArray array];
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
    
    for (int i = 0; i<titles.count; i++) {
        PicModel *model = [[PicModel alloc]init];
        model.title = titles[i];
        model.word = englishtTitles[i];
        NSString *name = [NSString stringWithFormat:@"guoshuka_%d.png",i+1];
//        NSData *data = UIImagePNGRepresentation([UIImage imageNamed:name]);
//        data = [data aes256DecryptWithkey:[NSData dataWithBytes:@"1234567890" length:16] iv:nil];
        model.imageName = name;
        model.type = @1;
        [self.dataArray addObject:model];
    }
    // 设置apiKey和secretKey
    [[BDSSpeechSynthesizer sharedInstance] setApiKey:@"lCyghXZxsaSbkKGpaFMfrVSz" withSecretKey:@"lIfZjBoyo2Y3GHdQI1DuFA30jvzdSbqq"];
    
    // 设置离线引擎
    NSString *ChineseSpeechData = [[NSBundle mainBundle] pathForResource:@"Chinese_Speech_Female" ofType:@"dat"];
    NSString *ChineseTextData = [[NSBundle mainBundle] pathForResource:@"Chinese_text" ofType:@"dat"];
    NSString *EnglishSpeechData = [[NSBundle mainBundle] pathForResource:@"English_Speech_Female" ofType:@"dat"];
    NSString *EnglishTextData = [[NSBundle mainBundle] pathForResource:@"English_text" ofType:@"dat"];
    NSString *LicenseData = [[NSBundle mainBundle] pathForResource:@"bdtts_license" ofType:@"dat"];
    
   NSError *loadErr = [[BDSSpeechSynthesizer sharedInstance] loadOfflineEngine:ChineseTextData speechDataPath:ChineseSpeechData licenseFilePath:LicenseData withAppCode:nil];
    
    if(loadErr != nil)
    {
        // 处理出错状况
    }
    // 加载英文资源
    loadErr = [[BDSSpeechSynthesizer sharedInstance] loadEnglishDataForOfflineEngine:EnglishTextData speechData:EnglishSpeechData];
    if(loadErr != nil)
    {
        // 处理出错状况
    }
    // 获得合成器实例
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    // 设置委托对象
    [[BDSSpeechSynthesizer sharedInstance] setSynthesizerDelegate:self];
    
    // 开始合成并播放
    NSError* speakError = nil;
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:@"您好" withError:&speakError] == -1){
        // 错误
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:@"今天天气真不错" withError:&speakError] == -1){
        // 错误
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }
    if([[BDSSpeechSynthesizer sharedInstance] speakSentence:@"Today's weather is really good!" withError:&speakError] == -1){
        // 错误
        NSLog(@"错误: %ld, %@", (long)speakError.code, speakError.localizedDescription);
    }

}


- (void)synthesizerStartWorkingSentence:(NSInteger)SynthesizeSentence
{
    NSLog(@"Began synthesizing sentence %ld", (long)SynthesizeSentence);
}

- (void)synthesizerFinishWorkingSentence:(NSInteger)SynthesizeSentence
{
    NSLog(@"Finished synthesizing sentence %ld", (long)SynthesizeSentence);
}

- (void)synthesizerSpeechStartSentence:(NSInteger)SpeakSentence
{
    NSLog(@"Began playing sentence %ld", (long)SpeakSentence);
}

- (void)synthesizerSpeechEndSentence:(NSInteger)SpeakSentence
{
    NSLog(@"Finished playing sentence %ld", (long)SpeakSentence);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
