//
//  numberPadButton.h
//  UIFromCode
//
//  Created by Al Tyus on 3/27/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface numberPadButton : UIButton

@property (nonatomic) NSString *buttonSymbol;

- (instancetype)initWithButtonSymbol:(NSString *)buttonSymbol;

@end
