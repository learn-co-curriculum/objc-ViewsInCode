//
//  KeyPadViewController.m
//  UIFromCode
//
//  Created by Al Tyus on 3/26/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "KeyPadViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import "KeypadView.h"
#import "UIView+Convenience.h"

@interface KeyPadViewController ()

@end

@implementation KeyPadViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        FAKIonIcons *keypadIcon = [FAKIonIcons ios7KeypadOutlineIconWithSize:30];
        FAKIonIcons *keypadSelectIcon = [FAKIonIcons ios7KeypadIconWithSize:30];
        UIImage *notSelectedKeypadIcon = [keypadIcon imageWithSize:CGSizeMake(30, 30)];
        UIImage *selectedKeypadIcon = [keypadSelectIcon imageWithSize:CGSizeMake(30, 30)];
        
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Keypad" image:notSelectedKeypadIcon selectedImage:selectedKeypadIcon];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    
    KeypadView *keypadView = [[KeypadView alloc] init];
    keypadView.backgroundColor = [UIColor yellowColor];
    
    [keypadView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:keypadView];
    
    NSDictionary *views = @{@"keypad":keypadView,
                            @"view":self.view};
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(80)-[keypad]-(80)-|" options:0 metrics:nil views:views]];
    [self.view addConstraints:
    [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[keypad]|" options:0 metrics:nil views:views]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
