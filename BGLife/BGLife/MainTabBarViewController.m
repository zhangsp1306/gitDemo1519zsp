//
//  MainTabBarViewController.m
//  BGLife
//
//  Created by zsp on 16/2/25.
//  Copyright © 2016年 张书鹏. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "BaseViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewControllers = [self createViewControllers];
}

- (NSArray *)createViewControllers {
    
    NSMutableArray *viewControllers = [NSMutableArray new];
    NSArray *classNameArray = @[@"BoyViewController", @"LifeViewController", @"GirlViewController"];
    NSArray *titleArray = @[@"Boy", @"Life", @"Girl"];
    NSArray *normalImageArray = @[@"image1", @"image2", @"image3", @"image4"];
    NSArray *selectedImageArray = @[@"image1", @"image2", @"image3", @"image4"];
    for (int i = 0; i < titleArray.count; i++) {
        Class cls = NSClassFromString(classNameArray[i]);
        BaseViewController *bvc = [[cls alloc] init];
        bvc.title = titleArray[i];
        bvc.tabBarItem = [[UITabBarItem alloc] initWithTitle:titleArray[i] image:[UIImage imageNamed:normalImageArray[i]] selectedImage:[[UIImage imageNamed:selectedImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:bvc];
//        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:20 weight:1], NSFontAttributeName, [UIColor blueColor], NSForegroundColorAttributeName, nil];
//        [nc.navigationBar setTitleTextAttributes:dict];
        [nc.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar"] forBarMetrics:UIBarMetricsDefault];
        [viewControllers addObject:nc];
    }
    
    return viewControllers;
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
