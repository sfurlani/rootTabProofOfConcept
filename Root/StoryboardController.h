//
//  StoryboardController.h
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarStoryboardController.h"

@class StoryboardPreview;

@interface StoryboardController : UIViewController <DefinesTabBarStoryboardFilename>

@property (strong, nonatomic)  IBInspectable NSString *storyboardFilename;

@end
