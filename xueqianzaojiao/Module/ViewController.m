//
//  ViewController.m
//  yezjk
//
//  Created by luck on 2018/6/18.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "ViewController.h"
#import "HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd.h"
#import "HDKKxyhdtyuiuPicModel.h"
#import "LUCKStoryListViewController.h"
#import "HDKKxyhdtyuiuAddPicViewMMumbtnhjkkd.h"
#import "HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd.h"
@interface ViewController ()

@property(nonatomic,strong) UIButton *topButton;

@property(nonatomic,strong) UIButton *bottomButton;

@property(nonatomic,strong) UIButton *storyButton;

@property(nonatomic,strong) UIButton *customButton;

@property(nonatomic,strong) UIButton *myStoreButton;

@property(nonatomic,strong) UIImageView *backImageView;

@property(nonatomic,strong) UIView *contentView;

@end

@implementation ViewController

- (UIImageView *)backImageView{
    if(!_backImageView) {
        _backImageView = [UIImageView new];
        _backImageView.contentMode = UIViewContentModeScaleAspectFill;
        _backImageView.image = [UIImage imageNamed:@"imageviewbackimage"];

    }
    return _backImageView;
}
-(UIView *)contentView{
    if (!_contentView) {
        _contentView = [UIView new];
    }
    return _contentView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.backImageView];
    [self.view addSubview:self.contentView];
    [self.backImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.left.right.mas_equalTo(0);
    }];
    //果蔬
    [self.contentView addSubview:self.topButton];
    [self.topButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    //动物
    [self.contentView addSubview:self.bottomButton];
    [self.bottomButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.topButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    //我的卡片
    [self.contentView addSubview:self.storyButton];
    [self.storyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.bottomButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
    }];
    
    //添加
    [self.contentView addSubview:self.customButton];
    [self.customButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.storyButton.mas_bottom).offset(20);
        make.size.mas_equalTo(CGSizeMake(150, 50));
        make.bottom.mas_equalTo(0);
    }];
    //收藏
    [self.view addSubview:self.myStoreButton];
    [self.myStoreButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.bottom.mas_equalTo(-15);
        make.size.mas_equalTo(CGSizeMake(130, 40));
    }];
    [self addAction];
}
- (void)addAction{
    @weakify(self);
    [[self.topButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllPicModelWithType:@1];
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.bottomButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllPicModelWithType:@2];
        [self.navigationController pushViewController:page animated:YES];
    }];
    
    [[self.storyButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        NSArray *array = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllPicModelWithType:@3];
        if (!array.count) {
            [MBProgressHUD showInfoMessage:NSLocalizedString(@"no card", nil)];
            return ;
        }
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = array;
        [self.navigationController pushViewController:page animated:YES];
    }];
    [[self.customButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        HDKKxyhdtyuiuAddPicViewMMumbtnhjkkd *add = [[HDKKxyhdtyuiuAddPicViewMMumbtnhjkkd alloc]init];
        [self.navigationController pushViewController:add animated:YES];
    }];
    
    [[self.myStoreButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        @strongify(self);
        NSArray *array = [[HDKKxyhdtyuiuDBManager sharedInstance] lookupAllStorePicModel];
        if (!array.count) {
            [MBProgressHUD showInfoMessage:NSLocalizedString(@"no store card", nil)];
            return ;
        }
        HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd *page = [[HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd alloc]init];
        page.dataArray = array;
        [self.navigationController pushViewController:page animated:YES];
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *first =  [[NSUserDefaults standardUserDefaults] valueForKey:@"first"];
    if (![first isEqualToString:@"1"]) {
        HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd *tiaok = [[HDKKxyhdtyuiuUserzhengceViewMMumbtnhjkkd alloc]init];
        [self presentViewController:tiaok animated:YES completion:NULL];
    }
}
- (UIButton *)customButton{
    if (!_customButton) {
        _customButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_customButton setTitle:NSLocalizedString(@"add card", nil) forState:UIControlStateNormal];
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
        [_storyButton setImage:[UIImage imageNamed:@"shuiguo_zhengchang"] forState:UIControlStateNormal];
        [_storyButton setTitle:NSLocalizedString(@"my card", nil) forState:UIControlStateNormal];
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
        [_topButton setImage:[UIImage imageNamed:@"shuiguo_zhengchang"] forState:UIControlStateNormal];
        [_topButton setTitle:NSLocalizedString(@"guoshuka", nil) forState:UIControlStateNormal];
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
        [_bottomButton setTitle:NSLocalizedString(@"dongwuka", nil) forState:UIControlStateNormal];
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
        [_myStoreButton setImage:[UIImage imageNamed:@"wodeshoucang"] forState:UIControlStateNormal];
        [_myStoreButton setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 5)];
        [_myStoreButton setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, 0, -5)];
        [_myStoreButton setTitle:NSLocalizedString(@"my store", nil) forState:UIControlStateNormal];
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
