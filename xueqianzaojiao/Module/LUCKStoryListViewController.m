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
