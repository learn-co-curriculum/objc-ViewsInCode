//
//  numberPadButton.m
//  UIFromCode
//
//  Created by Al Tyus on 3/27/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "numberPadButton.h"

@implementation numberPadButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (instancetype)initWithButtonSymbol:(NSString *)buttonSymbol
{
    self = [self initWithFrame:CGRectMake(0, 0, 72, 72)];
    if (self)
    {
        _buttonSymbol = buttonSymbol;
        
        
        UIImage *image = [UIImage imageNamed:_buttonSymbol];
        
        [self setBackgroundImage:image forState:UIControlStateNormal];
    }
    
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect
//{
//    // Drawing code
//    
//}


@end
