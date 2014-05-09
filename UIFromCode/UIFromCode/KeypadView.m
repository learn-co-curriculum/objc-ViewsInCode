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
        
#define STANDARDSPACEH 25
#define STANDARDSPACEV 8
        
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:|-%d-[oneButton(==twoButton)]-%d-[twoButton(==oneButton)]-%d-[threeButton(==oneButton)]-%d-|", STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH] options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:|-%d-[fourButton(==twoButton)]-%d-[fiveButton(==twoButton)]-%d-[sixButton(==twoButton)]-%d-|", STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH] options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:|-%d-[sevenButton(==twoButton)]-%d-[eightButton(==twoButton)]-%d-[nineButton(==twoButton)]-%d-|", STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH] options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:|-%d-[asterickButton(==twoButton)]-%d-[zeroButton(==twoButton)]-%d-[hashtagButton(==twoButton)]-%d-|", STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH] options:0 metrics:nil views:views]];
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"H:|-%d-[oneButton(==twoButton)]-%d-[phoneButton(==twoButton)]-%d-[threeButton(==twoButton)]-%d-|", STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH, STANDARDSPACEH] options:0 metrics:nil views:views]];
        
        
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:|-%d-[oneButton(==fourButton)]-%d-[fourButton(==oneButton)]-%d-[sevenButton(==fourButton)]-%d-[asterickButton(==fourButton)]-[phoneButton(==fourButton)]-%d-|", STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV] options:0 metrics:nil views:views]];
        
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:|-%d-[twoButton(==fourButton)]-%d-[fiveButton(==fourButton)]-%d-[eightButton(==fourButton)]-%d-[zeroButton(==fourButton)]-%d-[phoneButton(==fourButton)]-%d-|", STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV] options:0 metrics:nil views:views]];
        
        [self addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:|-%d-[threeButton(==fourButton)]-%d-[sixButton(==fourButton)]-%d-[nineButton(==fourButton)]-%d-[hashtagButton(==fourButton)]-%d-[phoneButton(==fourButton)]-%d-|", STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV, STANDARDSPACEV] options:0 metrics:nil views:views]];
        
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
