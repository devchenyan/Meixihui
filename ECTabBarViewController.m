//
//  ECTabBarViewController.m
//  Meixihui
//
//  Created by Echo on 4/2/15.
//  Copyright (c) 2015 Echo. All rights reserved.
//

#import "ECTabBarViewController.h"

#import "ECNewsViewController.h"
#import "ECServersViewController.h"
#import "ECLivesViewController.h"
#import "ECNewCityViewController.h"
#import "ECMemberViewController.h"

#import "ECNavigationController.h"

@interface ECTabBarViewController ()

@end

@implementation ECTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ECNewsViewController *newsVc = [[ECNewsViewController alloc]init];
    [self addECChildViewController:newsVc title:@"新闻动态" imageName:nil selectedImageName:nil];
    
    ECServersViewController *serversVc = [[ECServersViewController alloc] init];
    [self addECChildViewController:serversVc title:@"政务服务" imageName:nil selectedImageName:nil];
    
    ECLivesViewController *livesVc = [[ECLivesViewController alloc] init];
    [self addECChildViewController:livesVc title:@"生活圈" imageName:nil selectedImageName:nil];
    
    ECNewCityViewController *cityVc = [[ECNewCityViewController alloc] init];
    [self addECChildViewController:cityVc title:@"新城新貌" imageName:nil selectedImageName:nil];
    
    ECMemberViewController *memberVc = [[ECMemberViewController alloc] init];
    [self addECChildViewController:memberVc title:@"会员中心" imageName:nil selectedImageName:nil];
}

-(void)addECChildViewController:(UIViewController *)childController title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
//    childController.tabBarItem.title = title;
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:imageName];
    childController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    ECNavigationController *nav = [[ECNavigationController alloc] initWithRootViewController:childController];
    
    [self addChildViewController:nav];
}



@end
