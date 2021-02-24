//
//  ViewController.m
//  FCMainProject
//
//  Created by 石富才 on 2021/2/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/25.0 green:arc4random_uniform(255)/25.0 blue:arc4random_uniform(255)/25.0 alpha:1];
    
    NSMutableArray *mArr = [NSMutableArray arrayWithArray:@[@10,@2,@8,@4,@5]];
    CGFloat fontSize = [mArr.firstObject floatValue];
    [mArr removeObjectAtIndex:0];
    [self.navigationController.tabBarItem setBadgeColor:UIColor.orangeColor];
    [self.navigationController.tabBarItem setBadgeValue:[NSString stringWithFormat:@"%@",@(arc4random_uniform(255))]];
    [self.navigationController.tabBarItem setBadgeTextAttributes:@{
            NSFontAttributeName : [UIFont systemFontOfSize:fontSize],
            NSForegroundColorAttributeName : [UIColor redColor]
    } forState:UIControlStateNormal];
    [self.navigationController.tabBarItem setBadgeTextAttributes:@{
            NSFontAttributeName : [UIFont boldSystemFontOfSize:fontSize],
            NSForegroundColorAttributeName : [UIColor whiteColor]
    } forState:UIControlStateSelected];
}


@end
