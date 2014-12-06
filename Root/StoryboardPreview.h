//
//  StoryboardPreview.h
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface StoryboardPreview : UIView

@property (nonatomic, strong) IBInspectable UIImage *icon;
@property (nonatomic, strong) IBInspectable NSString *storyboardFilename;

@end
