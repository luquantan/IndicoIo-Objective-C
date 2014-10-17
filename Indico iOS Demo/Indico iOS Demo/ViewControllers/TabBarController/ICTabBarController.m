//
//  ICTabBarController.m
//  Indico iOS Demo
//
//  Created by Indico on 17/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "ICTabBarController.h"

@interface ICTabBarController ()<UINavigationControllerDelegate>

@end

@implementation ICTabBarController

UIColor *appTintColor = nil;

+(void)initialize
{
    [super initialize];
    
    appTintColor = [UIColor colorWithRed:36.0/255.0 green:143.0/255.0 blue:178.0/255.0 alpha:1.0];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.customizableViewControllers = nil;
    self.tabBar.tintColor = appTintColor;
    self.moreNavigationController.navigationBar.barTintColor = [UIColor colorWithRed:255.0/255.0 green:228.0/255.0 blue:220.0/255.0 alpha:1.0];
    self.moreNavigationController.navigationBar.tintColor = appTintColor;
    NSDictionary *textTitleOptions = [NSDictionary dictionaryWithObjectsAndKeys:appTintColor, NSForegroundColorAttributeName, nil];
    [self.moreNavigationController.navigationBar setTitleTextAttributes:textTitleOptions];
    self.moreNavigationController.delegate = self;

}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.view.tintColor = appTintColor;
    UINavigationBar *morenavbar = navigationController.navigationBar;
    UINavigationItem *morenavitem = morenavbar.topItem;

    /* We don't need Edit button in More screen. */
    morenavitem.rightBarButtonItem = nil;
}

@end
