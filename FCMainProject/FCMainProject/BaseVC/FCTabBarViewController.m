//
//  FCTabBarViewController.m
//  FCMainProject
//
//  Created by 石富才 on 2021/2/24.
//

#import "FCTabBarViewController.h"

#import "FCNavigationViewController.h"
#import "ViewController.h"

@interface FCTabBarViewController ()

@end

@implementation FCTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _addChildViewControllers];
    [self _addTabbarItems];
}

//MARK:
- (void)_addChildViewControllers{
    FCNavigationViewController *oneVC = [[FCNavigationViewController alloc]initWithRootViewController:ViewController.new];
    FCNavigationViewController *twoVC = [[FCNavigationViewController alloc]initWithRootViewController:ViewController.new];
    FCNavigationViewController *threeVC = [[FCNavigationViewController alloc]initWithRootViewController:ViewController.new];
    FCNavigationViewController *fourVC = [[FCNavigationViewController alloc]initWithRootViewController:ViewController.new];
    FCNavigationViewController *fiveVC = [[FCNavigationViewController alloc]initWithRootViewController:ViewController.new];
    self.viewControllers = @[oneVC, twoVC, threeVC, fourVC, fiveVC];
}
- (void)_addTabbarItems{
    NSDictionary *oneDic = @{
        @"TabBarItemTitle" : @"One",
        @"tabBarItemImage" : @"",
        @"tabBarItemSelectedImage" : @"",
    };
    
    NSDictionary *twoDic = @{
        @"TabBarItemTitle" : @"Two",
        @"tabBarItemImage" : @"",
        @"tabBarItemSelectedImage" : @"",
    };
    
    NSDictionary *threeDic = @{
        @"TabBarItemTitle" : @"Three",
        @"tabBarItemImage" : @"",
        @"tabBarItemSelectedImage" : @"",
    };
    
    NSDictionary *fourDic = @{
        @"TabBarItemTitle" : @"Four",
        @"tabBarItemImage" : @"",
        @"tabBarItemSelectedImage" : @"",
    };
    
    NSDictionary *fiveDic = @{
        @"TabBarItemTitle" : @"Five",
        @"tabBarItemImage" : @"",
        @"tabBarItemSelectedImage" : @"",
    };
    NSArray *itemAttriArr = @[oneDic, twoDic, threeDic, fourDic, fiveDic];
    [self.viewControllers enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull vc, NSUInteger idx, BOOL * _Nonnull stop) {
        vc.tabBarItem.title = itemAttriArr[idx][@"TabBarItemTitle"];
        vc.tabBarItem.image = [UIImage imageNamed:itemAttriArr[idx][@"tabBarItemImage"]];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:itemAttriArr[idx][@"tabBarItemSelectedImage"]];
        vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2);
    }];
    self.tabBar.tintColor = UIColor.redColor;
}


@end
