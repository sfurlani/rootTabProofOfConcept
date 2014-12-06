//
//  TabBarStoryboardController.m
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import "TabBarStoryboardController.h"
#import "StoryboardController.h"

@interface TabBarStoryboardController ()

@end

@implementation TabBarStoryboardController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *hotswap = [self.viewControllers mutableCopy];
    [self.viewControllers enumerateObjectsUsingBlock:^(UIViewController *viewController, NSUInteger idx, BOOL *stop) {
        if ([viewController isKindOfClass:[StoryboardController class]])
        {
            StoryboardController *sbvc = (StoryboardController*)viewController;
            UIStoryboard *board = [UIStoryboard storyboardWithName:sbvc.storyboardFilename bundle:nil];
            UIViewController *initial = [board instantiateInitialViewController];
            if (initial)
            {
                [hotswap replaceObjectAtIndex:idx withObject:initial];
            }
        }
    }];
    self.viewControllers = hotswap;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
