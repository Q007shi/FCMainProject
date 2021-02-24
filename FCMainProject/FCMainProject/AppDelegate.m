//
//  AppDelegate.m
//  FCMainProject
//
//  Created by 石富才 on 2021/2/24.
//

#import "AppDelegate.h"
//
#import "FCTabBarViewController.h"

@interface AppDelegate ()

/** <#aaa#> */
//@property(nonatomic,strong)UIWindow *window;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = FCTabBarViewController.new;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
