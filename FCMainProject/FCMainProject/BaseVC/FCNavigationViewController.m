//
//  FCNavigationViewController.m
//  FCMainProject
//
//  Created by 石富才 on 2021/2/24.
//

#import "FCNavigationViewController.h"

@interface FCNavigationViewController ()

@end

@implementation FCNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 不让自控制器控制系统导航条
//    self.fd_viewControllerBasedNavigationBarAppearanceEnabled = NO;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count != 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}

@end
