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
#import "LUCKAddStoryViewController.h"
#import "LUCKStoryListViewController.h"
#import "LUCKAddPicViewController.h"
#import "AppDelegate.h"
#import "LUCKUserzhengceViewController.h"
@interface ViewController ()

@property(nonatomic,strong) UIButton *topButton;

@property(nonatomic,strong) UIButton *bottomButton;

@property(nonatomic,strong) UIButton *storyButton;

@property(nonatomic,strong) UIButton *customButton;

@property(nonatomic,strong) UIButton *myStoreButton;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [[AipOcrService shardService] authWithAK:@"jpEHyoIXNhIRBgTlmq0YxAWh" andSK:@"yR21yYveogECkHYOXreITgBH5Ly6KiFW"];
    [[LUCKDBManager sharedInstance] creatData];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageview= [[ UIImageView alloc]init];
    imageview.contentMode = UIViewContentModeScaleAspectFill;
    imageview.image = [UIImage imageNamed:@"backgroundImage"];
    [self.view addSubview:imageview];
    [imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    UIView *containView = [UIView new];
    [self.view addSubview:containView];
    [containView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.left.right.mas_equalTo(0);
    }];
    //果蔬
    [containView addSubview:self.topButton];
    //动物
    [containView addSubview:self.bottomButton];
    //自定义
    [containView addSubview:self.customButton];
    //我的卡片
    [containView addSubview:self.storyButton];
    //收藏
    [self.view addSubview:self.myStoreButton];

    [self.topButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(containView);
        make.top.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    [self.bottomButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(containView);
        make.top.equalTo(self.topButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    [self.storyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(containView);
        make.top.equalTo(self.bottomButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    [self.customButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(containView);
        make.top.equalTo(self.storyButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
        make.bottom.mas_equalTo(0);
    }];
    
    [self.myStoreButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.mas_equalTo(-15);
        make.size.mas_equalTo(CGSizeMake(130, 40));
    }];

    
    @weakify(self);
    [[self.topButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = [[LUCKDBManager sharedInstance] lookupAllPicModelWithType:@1];
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.bottomButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = [[LUCKDBManager sharedInstance] lookupAllPicModelWithType:@2];
        [self.navigationController pushViewController:page animated:YES];
    }];
    
    [[self.storyButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        NSArray *array = [[LUCKDBManager sharedInstance] lookupAllPicModelWithType:@3];
        if (!array.count) {
            [MBProgressHUD showInfoMessage:@"还没有添加任何卡片，快去添加吧"];
            return ;
        }
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = array;
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.customButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        LUCKAddPicViewController *add = [[LUCKAddPicViewController alloc]init];
        [self.navigationController pushViewController:add animated:YES];
    }];
    
    [[self.myStoreButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        NSArray *array = [[LUCKDBManager sharedInstance] lookupAllStorePicModel];
        if (!array.count) {
            [MBProgressHUD showInfoMessage:@"还没有收藏任何卡片"];
            return ;
        }
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = array;
        [self.navigationController pushViewController:page animated:YES];
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *first =  [[NSUserDefaults standardUserDefaults] valueForKey:@"first"];
    if (![first isEqualToString:@"1"]) {
        LUCKUserzhengceViewController *tiaok = [[LUCKUserzhengceViewController alloc]init];
        [self presentViewController:tiaok animated:YES completion:NULL];
    }
}
- (UIButton *)customButton{
    if (!_customButton) {
        _customButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_customButton setTitle:@"添加卡片" forState:UIControlStateNormal];
        [_customButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_customButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        _customButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_customButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _customButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _customButton.layer.cornerRadius = 25.0;
    }
    return _customButton;
}
- (UIButton *)storyButton{
    if (!_storyButton) {
        _storyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_storyButton setImage:[UIImage imageNamed:@"guoshu_normal"] forState:UIControlStateNormal];
        [_storyButton setTitle:@"我的卡片" forState:UIControlStateNormal];
        [_storyButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_storyButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        _storyButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_storyButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _storyButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _storyButton.layer.cornerRadius = 25.0;
    }
    return _storyButton;
}
- (UIButton *)topButton{
    if (!_topButton) {
        _topButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_topButton setImage:[UIImage imageNamed:@"guoshu_normal"] forState:UIControlStateNormal];
        [_topButton setTitle:@"果蔬卡" forState:UIControlStateNormal];
        [_topButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_topButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        _topButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_topButton setTitleColor:[UIColor colorWithHexString:@"ffffff"] forState:UIControlStateNormal];
        _topButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _topButton.layer.cornerRadius = 25.0;
    }
    return _topButton;
}
- (UIButton *)bottomButton{
    if (!_bottomButton) {
        _bottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_bottomButton setImage:[UIImage imageNamed:@"dongwu"] forState:UIControlStateNormal];
        [_bottomButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_bottomButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        [_bottomButton setTitle:@"动物卡" forState:UIControlStateNormal];
        _bottomButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_bottomButton setTitleColor:[UIColor colorWithHexString:@"ffffff"]  forState:UIControlStateNormal];
        _bottomButton.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.6];
        _bottomButton.layer.cornerRadius = 25.0;

    }
    return _bottomButton;
}
- (UIButton *)myStoreButton{
    if (!_myStoreButton) {
        _myStoreButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_myStoreButton setImage:[UIImage imageNamed:@"store"] forState:UIControlStateNormal];
        [_myStoreButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_myStoreButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        [_myStoreButton setTitle:@"我的收藏" forState:UIControlStateNormal];
        _myStoreButton.imageView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.8, 0.8);
        _myStoreButton.titleLabel.font = [UIFont systemFontOfSize:17];
        [_myStoreButton setTitleColor:[UIColor colorWithHexString:@"ffffff"]  forState:UIControlStateNormal];
        _myStoreButton.backgroundColor = [UIColor clearColor];
        _myStoreButton.layer.cornerRadius = 20.0;
        _myStoreButton.layer.borderColor = [UIColor whiteColor].CGColor;
        _myStoreButton.layer.borderWidth = 0.5;
        
    }
    return _myStoreButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
