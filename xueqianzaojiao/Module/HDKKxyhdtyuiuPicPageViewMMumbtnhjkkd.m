//
//  HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd.m
//  yezjk
//
//  Created by perfay on 2018/6/19.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd.h"
#import "HDKKxyhdtyuiuPicViewMMumbtnhjkkd.h"

@interface HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource,UIScrollViewDelegate>

@property(nonatomic,strong) UIPageViewController   *pageController;

@property(nonatomic,strong) HDKKxyhdtyuiuPicViewMMumbtnhjkkd *currentPicViewController;

@end

@implementation HDKKxyhdtyuiuPicPageViewMMumbtnhjkkd
-(void)PageSomethingNameBackCell:(id)arg1{
NSNumber *PageS = [[NSUserDefaults standardUserDefaults] objectForKey:@"PageS_PageS"];
if (PageS) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"PageS_PageS"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"PageS_PageS"];
}
}
-(id)DismissFunctionTabbarHeightShow:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)SomethingFinishMatchinsertScroll:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)LoadNameSecretStopLocal:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)FinishTabbarinsertScrollWeb:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)CardMatchFunctionStartHeight:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)LayerSecretFrameLocalCell:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)MatchinsertStartWebShow:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)DismissFinishTabbarHeightScroll:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)SomethingNameBackCellType:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)FunctionTabbarHeightShowMessage:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
-(id)FinishMatchinsertScrollWeb:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)HeightVersionConfigRecordDo:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)HistoryAnimationCacheDatasUpdate:(id)arg1{
NSString *obj=[[NSString alloc]init];
return obj;
}
-(id)VersionSystemRecordGlobalPage:(id)arg1{
NSArray *obj=[[NSArray alloc]init];
return obj;
}
-(id)UserConfigShadowDoCommon:(id)arg1{
NSSet *obj=[[NSSet alloc]init];
return obj;
}
+(void)InputVoiceUpdateOffetApp{
NSNumber *Input = [[NSUserDefaults standardUserDefaults] objectForKey:@"Input_Input"];
if (Input) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Input_Input"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Input_Input"];
}
}
+(void)DoPageDatasCardMatch{
NSNumber *DoPag = [[NSUserDefaults standardUserDefaults] objectForKey:@"DoPag_DoPag"];
if (DoPag) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DoPag_DoPag"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DoPag_DoPag"];
}
}
+(void)SystemCommonGlobalLayerSomething{
NSNumber *Syste = [[NSUserDefaults standardUserDefaults] objectForKey:@"Syste_Syste"];
if (Syste) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Syste_Syste"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Syste_Syste"];
}
}
+(void)ErrorOffetCardMatchFunction{
NSNumber *Error = [[NSUserDefaults standardUserDefaults] objectForKey:@"Error_Error"];
if (Error) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Error_Error"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Error_Error"];
}
}
+(void)CacheDatasUpdateDismissFinish{
NSNumber *Cache = [[NSUserDefaults standardUserDefaults] objectForKey:@"Cache_Cache"];
if (Cache) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Cache_Cache"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Cache_Cache"];
}
}
+(void)RecordGlobalPageSomethingName{
NSNumber *Recor = [[NSUserDefaults standardUserDefaults] objectForKey:@"Recor_Recor"];
if (Recor) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Recor_Recor"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Recor_Recor"];
}
}
+(void)DatasCardDismissFunctionTabbar{
NSNumber *Datas = [[NSUserDefaults standardUserDefaults] objectForKey:@"Datas_Datas"];
if (Datas) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Datas_Datas"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Datas_Datas"];
}
}
+(void)HelpErrorOffetFinishMatch{
NSNumber *HelpE = [[NSUserDefaults standardUserDefaults] objectForKey:@"HelpE_HelpE"];
if (HelpE) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"HelpE_HelpE"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"HelpE_HelpE"];
}
}
+(void)DoCommonLoadNameSecret{
NSNumber *DoCom = [[NSUserDefaults standardUserDefaults] objectForKey:@"DoCom_DoCom"];
if (DoCom) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"DoCom_DoCom"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"DoCom_DoCom"];
}
}
+(void)UpdateOffetFinishTabbarinsert{
NSNumber *Updat = [[NSUserDefaults standardUserDefaults] objectForKey:@"Updat_Updat"];
if (Updat) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Updat_Updat"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Updat_Updat"];
}
}
+(void)ErrorDatasCardMatchFunction{
NSNumber *Error = [[NSUserDefaults standardUserDefaults] objectForKey:@"Error_Error"];
if (Error) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Error_Error"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Error_Error"];
}
}
+(void)CommonGlobalLayerSecretFrame{
NSNumber *Commo = [[NSUserDefaults standardUserDefaults] objectForKey:@"Commo_Commo"];
if (Commo) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Commo_Commo"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Commo_Commo"];
}
}
+(void)OffetCardMatchSomethingName{
NSNumber *Offet = [[NSUserDefaults standardUserDefaults] objectForKey:@"Offet_Offet"];
if (Offet) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Offet_Offet"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Offet_Offet"];
}
}
+(void)DatasUpdateDismissFinishTabbar{
NSNumber *Datas = [[NSUserDefaults standardUserDefaults] objectForKey:@"Datas_Datas"];
if (Datas) {
[[NSUserDefaults standardUserDefaults] setObject:@0 forKey:@"Datas_Datas"];
}else{
[[NSUserDefaults standardUserDefaults] setObject:@1 forKey:@"Datas_Datas"];
}
}
/////RandomMethodTag End/////

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeLeft;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||

            interfaceOrientation == UIInterfaceOrientationLandscapeRight );
}
- (UIPageViewController *)pageController{
    if (!_pageController) {
        _pageController = [[UIPageViewController alloc]initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];;
        _pageController.delegate = self;
        _pageController.doubleSided = YES;
        _pageController.dataSource = self;
        [_pageController setValue:@(NO) forKeyPath:@"_scrollView.bounces"];
    }
    return _pageController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    [self initPageViewController];

}
- (void)initPageViewController{
    HDKKxyhdtyuiuPicViewMMumbtnhjkkd *vc = (HDKKxyhdtyuiuPicViewMMumbtnhjkkd *)[self getViewControllerWithIndex:0];
    if (vc) {
        [vc speakMehtod];
        self.currentPicViewController = vc;
        if (vc.model.isCustom) {
            self.view.backgroundColor = [[self loadImageWithName:vc.model.imageName] qmui_averageColor];
        }
        else{
            self.view.backgroundColor = [[UIImage imageNamed:vc.model.imageName] qmui_averageColor];
        }
        [self.pageController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
    }
    [self addChildViewController:self.pageController];
    [self.view addSubview:self.pageController.view];
    [self.pageController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeCustom];
    [back setImage:[UIImage imageNamed:@"daohang_return_icon"] forState:UIControlStateNormal];
    [self.view addSubview:back];
    [back mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(15);
        make.size.mas_equalTo(CGSizeMake(50, 30));
    }];
    [[back rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        [self.navigationController popViewControllerAnimated:YES];
    }];
}
- (UIViewController *)getViewControllerWithIndex:(NSInteger)index{
    if (index >= self.dataArray.count || index < 0) {
        return nil;
    }
    HDKKxyhdtyuiuPicModel  *model = self.dataArray[index];
    HDKKxyhdtyuiuPicViewMMumbtnhjkkd *vc = [[HDKKxyhdtyuiuPicViewMMumbtnhjkkd alloc]init];
    vc.model = model;
    return vc;
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    HDKKxyhdtyuiuPicViewMMumbtnhjkkd *vc  =(HDKKxyhdtyuiuPicViewMMumbtnhjkkd *)viewController;
    NSInteger index = [self.dataArray indexOfObject:vc.model];
    if (index == 0 || (index == NSNotFound)) {
        return nil;
    }
    index--;
    return [self getViewControllerWithIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    HDKKxyhdtyuiuPicViewMMumbtnhjkkd *vc  =(HDKKxyhdtyuiuPicViewMMumbtnhjkkd *)viewController;
    NSInteger index = [self.dataArray indexOfObject:vc.model];
    if (index == self.dataArray.count - 1 || (index == NSNotFound)) {
        return nil;
    }
    index++;
    return [self getViewControllerWithIndex:index];
}
- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed{
    HDKKxyhdtyuiuPicViewMMumbtnhjkkd *vc = (HDKKxyhdtyuiuPicViewMMumbtnhjkkd *)pageViewController.viewControllers[0];
    if (vc == self.currentPicViewController) {
        return;
    }
    [vc speakMehtod];
    self.currentPicViewController = vc;
    if (vc.model.isCustom) {
        self.view.backgroundColor = [[self loadImageWithName:vc.model.imageName] qmui_averageColor];
    }
    else{
        self.view.backgroundColor = [[UIImage imageNamed:vc.model.imageName] qmui_averageColor];
    }
}
-(UIImage *)loadImageWithName:(NSString *)imgName{
    NSString    *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) objectAtIndex:0];
    NSString    *path = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithString: imgName] ];
    UIImage     *image = [UIImage imageWithContentsOfFile:path];
    return image;
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
