//
//  UIStoryboard+UIStoryboard_Hinge.m
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import "UIStoryboard+Tabbed.h"

@implementation UIStoryboard (Tabbed)

+ (UIStoryboard*) firstStoryboard
{
    return [UIStoryboard storyboardWithName:@"First" bundle:nil];
}

+ (UIStoryboard*) secondStoryboard
{
    return [UIStoryboard storyboardWithName:@"Second" bundle:nil];
}


@end
