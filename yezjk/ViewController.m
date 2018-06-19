//
//  ViewController.m
//  yezjk
//
//  Created by luck on 2018/6/18.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import "PicPageViewController.h"
#import "PicModel.h"
#import <YYKit.h>



@interface ViewController ()

@property(nonatomic,strong) UIButton *topButton;

@property(nonatomic,strong) UIButton *bottomButton;

@end

@implementation ViewController

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
            NSString *name = [NSString stringWithFormat:@"guoshuka_%d",i+1];\
            model.imageName = name;
            model.type = @1;

        }
        else if (type == 2){
            model.title = titles2[i];
            model.word = englishtTitles2[i];
            NSString *name = [NSString stringWithFormat:@"dongwu_%d",i+1];
            model.imageName = name;
            model.type = @2;
        }
        [dataArray addObject:model];
    }
    return  dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.fd_prefersNavigationBarHidden = YES;
    [self.view addSubview:self.topButton];
    [self.view addSubview:self.bottomButton];
    [self.topButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view.mas_centerY).offset(-40);
        make.size.mas_equalTo(CGSizeMake(100, 40));
    }];
    [self.bottomButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view.mas_centerY).offset(40);
        make.size.mas_equalTo(CGSizeMake(100, 40));
    }];
    [[self.topButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = [self getDataArrayWithType:1];
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.bottomButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = [self getDataArrayWithType:2];
        [self.navigationController pushViewController:page animated:YES];
    }];
    
}
- (UIButton *)topButton{
    if (!_topButton) {
        _topButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_topButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_topButton setTitle:@"click1" forState:UIControlStateNormal];
        _topButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_topButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _topButton.backgroundColor = [UIColor blackColor];
    }
    return _topButton;
}
- (UIButton *)bottomButton{
    if (!_bottomButton) {
        _bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_bottomButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_bottomButton setTitle:@"click2" forState:UIControlStateNormal];
        _bottomButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_bottomButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _bottomButton.backgroundColor = [UIColor blackColor];
    }
    return _bottomButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
