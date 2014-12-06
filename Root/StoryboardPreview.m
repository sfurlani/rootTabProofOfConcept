//
//  StoryboardPreview.m
//  Root
//
//  Created by Mobile Dev on 12/6/14.
//  Copyright (c) 2014 Cleod9. All rights reserved.
//

#import "StoryboardPreview.h"

@implementation StoryboardPreview

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    NSString *description = @"Be sure to add the storyboard filename to the View Controller";
    if (self.storyboardFilename)
    {
        description = [NSString stringWithFormat:@"This loads Storyboard: %@", self.storyboardFilename];
    }
    
    static NSDictionary *attributes;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
        style.alignment = NSTextAlignmentCenter;
        UIFont *font = [UIFont boldSystemFontOfSize:50.0f];
        attributes = @{NSParagraphStyleAttributeName:style,
                       NSFontAttributeName:font};
    });
    
    [description drawInRect:rect withAttributes:attributes];
    
    if (self.icon)
    {
        CGRect iconrect = CGRectInset(rect, 128, 128);
        [self.icon drawInRect:iconrect blendMode:kCGBlendModeDarken alpha:0.8f];
    }
    
}

@end
