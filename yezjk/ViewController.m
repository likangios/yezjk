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



@interface ViewController ()

@property(nonatomic,strong) UIButton *topButton;

@property(nonatomic,strong) UIButton *bottomButton;

@property(nonatomic,strong) UIButton *myStoreButton;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [[AipOcrService shardService] authWithAK:@"jpEHyoIXNhIRBgTlmq0YxAWh" andSK:@"yR21yYveogECkHYOXreITgBH5Ly6KiFW"];

    [[LUCKDBManager sharedInstance] creatData];
//    self.fd_prefersNavigationBarHidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageview= [[ UIImageView alloc]init];
    imageview.contentMode = UIViewContentModeScaleAspectFill;
    imageview.image = [UIImage imageNamed:@"backgroundImage"];
    [self.view addSubview:imageview];
    [imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [self.view addSubview:self.topButton];
    [self.view addSubview:self.bottomButton];
    [self.view addSubview:self.myStoreButton];

    [self.topButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view.mas_centerY).offset(-40);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    [self.bottomButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view.mas_centerY).offset(40);
        make.size.mas_equalTo(CGSizeMake(150, 50));
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
    
    [[self.myStoreButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        PicPageViewController *page = [[PicPageViewController alloc]init];
        page.dataArray = [[LUCKDBManager sharedInstance] lookupAllStorePicModel];
        [self.navigationController pushViewController:page animated:YES];
    }];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    LUCKAddStoryViewController *add = [[LUCKAddStoryViewController alloc]init];
    [self.navigationController pushViewController:add animated:YES];
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
