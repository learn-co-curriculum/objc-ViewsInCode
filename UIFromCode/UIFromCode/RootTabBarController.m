//
//  RootTabBarController.m
//  UIFromCode
//
//  Created by Al Tyus on 3/27/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "RootTabBarController.h"
#import "RecentsTableViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h>
#import "ContactsTableViewController.h"
#import "KeyPadViewController.h"
#import "VoicemailTableViewController.h"
#import "FavoritesTableViewController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

        [self configureViewControllers];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.selectedIndex = 3; 
}

- (void)configureViewControllers
{
    FavoritesTableViewController *favoritesTVC = [[FavoritesTableViewController alloc] initWithStyle:UITableViewStylePlain];
    RecentsTableViewController *recentsTVC = [[RecentsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    ContactsTableViewController *contactsTVC = [[ContactsTableViewController alloc] initWithStyle:UITableViewStylePlain];
    KeyPadViewController *keypadVC = [[KeyPadViewController alloc] init];
    VoicemailTableViewController *voicemailVC = [[VoicemailTableViewController alloc] init];
    
    UINavigationController *favoritesNav = [[UINavigationController alloc] initWithRootViewController:favoritesTVC];
    UINavigationController *recentsNav = [[UINavigationController alloc] initWithRootViewController:recentsTVC];
    UINavigationController *contactsNav = [[UINavigationController alloc] initWithRootViewController:contactsTVC];
    UINavigationController *voicemailNav = [[UINavigationController alloc] initWithRootViewController:voicemailVC];
    
    self.viewControllers = @[favoritesNav, recentsNav, contactsNav, keypadVC, voicemailNav];
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
