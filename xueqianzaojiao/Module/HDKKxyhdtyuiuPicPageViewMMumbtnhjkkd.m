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
