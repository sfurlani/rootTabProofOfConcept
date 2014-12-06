//
//  UITabBarController+Storyboard.m
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import "UITabBarController+Storyboard.h"

@implementation UITabBarController (Storyboard)

+ (UITabBarController *)tabBarControllerWithStoryboardTabs:(NSArray *)tabs {
    
    UITabBarController * tabBarController = [UITabBarController new];
    NSMutableArray * instantiatedTabs = [NSMutableArray arrayWithCapacity:[tabs count]];
    
    // Instantiates each of the storyboards.
    [tabs enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        
        NSAssert([obj isKindOfClass:[UIStoryboard class]],
                 @"Expected UIStoryboard, got %@",
                 NSStringFromClass([obj class]));
        
        [instantiatedTabs addObject:[obj instantiateInitialViewController]];
    }];
    
    [tabBarController setViewControllers:instantiatedTabs];
    
    return tabBarController;
}

@end
