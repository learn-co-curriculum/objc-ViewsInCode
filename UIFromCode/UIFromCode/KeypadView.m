//
//  KeypadView.m
//  UIFromCode
//
//  Created by Al Tyus on 3/27/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "KeypadView.h"
#import "numberPadButton.h"
#import "UIView+Convenience.h"

@implementation KeypadView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
        numberPadButton *oneButton = [[numberPadButton alloc] initWithButtonSymbol:@"1"];
        numberPadButton *twoButton = [[numberPadButton alloc] initWithButtonSymbol:@"2"];
        numberPadButton *threeButton = [[numberPadButton alloc] initWithButtonSymbol:@"3"];
        numberPadButton *fourButton = [[numberPadButton alloc] initWithButtonSymbol:@"4"];
        numberPadButton *fiveButton = [[numberPadButton alloc] initWithButtonSymbol:@"5"];
        numberPadButton *sixButton = [[numberPadButton alloc] initWithButtonSymbol:@"6"];
        numberPadButton *sevenButton = [[numberPadButton alloc] initWithButtonSymbol:@"7"];
        numberPadButton *eightButton = [[numberPadButton alloc] initWithButtonSymbol:@"8"];
        numberPadButton *nineButton = [[numberPadButton alloc] initWithButtonSymbol:@"9"];
        numberPadButton *zeroButton = [[numberPadButton alloc] initWithButtonSymbol:@"0"];
        numberPadButton *asterickButton = [[numberPadButton alloc] initWithButtonSymbol:@"Asterick"];
        numberPadButton *hashtagButton = [[numberPadButton alloc] initWithButtonSymbol:@"hashtag"];
        numberPadButton *phoneButton = [[numberPadButton alloc] initWithButtonSymbol:@"phone"]; 

        
        [self addSubviews:[NSSet setWithArray:@[oneButton, twoButton, threeButton, fourButton, fiveButton, sixButton, sevenButton, eightButton, nineButton, zeroButton, asterickButton, hashtagButton, phoneButton]]];
    
        
        NSDictionary *views = NSDictionaryOfVariableBindings(oneButton, twoButton, threeButton, fourButton, fiveButton, sixButton, sevenButton, eightButton, nineButton, zeroButton, asterickButton, hashtagButton, phoneButton);
        
        for (UIButton *button in self.subviews)
        {
            [button setTranslatesAutoresizingMaskIntoConstraints:NO];
        }
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        
        
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[oneButton(==twoButton)]-[twoButton(==oneButton)]-[threeButton(==oneButton)]-|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[fourButton(==twoButton)]-[fiveButton(==twoButton)]-[sixButton(==twoButton)]-|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[sevenButton(==twoButton)]-[eightButton(==twoButton)]-[nineButton(==twoButton)]-|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[asterickButton(==twoButton)]-[zeroButton(==twoButton)]-[hashtagButton(==twoButton)]-|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[oneButton(==twoButton)]-[phoneButton(==twoButton)]-[threeButton(==twoButton)]-|" options:0 metrics:nil views:views]];
        
        
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[oneButton(==fourButton)]-[fourButton(==oneButton)]-[sevenButton(==fourButton)]-[asterickButton(==fourButton)]-[phoneButton(==fourButton)]|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[twoButton(==fourButton)]-[fiveButton(==fourButton)]-[eightButton(==fourButton)]-[zeroButton(==fourButton)]-[phoneButton(==fourButton)]|" options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[threeButton(==fourButton)]-[sixButton(==fourButton)]-[nineButton(==fourButton)]-[hashtagButton(==fourButton)]-[phoneButton(==fourButton)]|" options:0 metrics:nil views:views]];
        
        [self layoutSubviews];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
