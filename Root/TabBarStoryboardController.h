//
//  TabBarStoryboardController.h
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DefinesTabBarStoryboardFilename <NSObject>

- (NSString*) storyboardFilename;

@end

@interface TabBarStoryboardController : UITabBarController

@end


