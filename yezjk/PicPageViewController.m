//
//  PicPageViewController.m
//  yezjk
//
//  Created by perfay on 2018/6/19.
//  Copyright © 2018年 luck. All rights reserved.
//

#import "PicPageViewController.h"
#import "PicViewController.h"

@interface PicPageViewController ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource>

@property(nonatomic,strong) UIPageViewController   *pageController;

@end

@implementation PicPageViewController

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
    self.fd_prefersNavigationBarHidden = YES;
    
    self.view.backgroundColor =[UIColor whiteColor];
    PicViewController *vc = (PicViewController *)[self getViewControllerWithIndex:0];
    if (vc) {
        self.view.backgroundColor = [[UIImage imageNamed:vc.model.imageName] qmui_averageColor];
        [self.pageController setViewControllers:@[vc] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
    }
    [self addChildViewController:self.pageController];
    [self.view addSubview:self.pageController.view];
    [self.pageController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}
- (UIViewController *)getViewControllerWithIndex:(NSInteger)index{
    if (index >= self.dataArray.count || index < 0) {
        return nil;
    }
    PicModel  *model = self.dataArray[index];
    PicViewController *vc = [[PicViewController alloc]init];
    vc.model = model;
    return vc;
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    PicViewController *vc  =(PicViewController *)viewController;
    NSInteger index = [self.dataArray indexOfObject:vc.model];
    if (index == 0 || (index == NSNotFound)) {
        return nil;
    }
    index--;
    return [self getViewControllerWithIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    PicViewController *vc  =(PicViewController *)viewController;
    NSInteger index = [self.dataArray indexOfObject:vc.model];
    if (index == self.dataArray.count - 1 || (index == NSNotFound)) {
        return nil;
    }
    index++;
    return [self getViewControllerWithIndex:index];
}
- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed{
    PicViewController *vc = (PicViewController *)pageViewController.viewControllers[0];
    self.view.backgroundColor = [[UIImage imageNamed:vc.model.imageName] qmui_averageColor];
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
