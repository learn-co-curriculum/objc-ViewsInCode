//
//  UIView+Convenience.m
//  UIFromCode
//
//  Created by Al Tyus on 3/27/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "UIView+Convenience.h"

@implementation UIView (Convenience)

- (void)addSubviews:(NSSet *)objects
{
    for (UIView *view in objects)
    {
        if ([view isKindOfClass:[UIView class]])
        {
            [self addSubview:view]; 
        }
    }
    
}

@end
