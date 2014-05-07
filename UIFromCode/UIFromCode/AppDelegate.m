//
//  AppDelegate.m
//  UIFromCode
//
//  Created by Al Tyus on 3/26/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabBarController.h"


#import "FavoritesTableViewController.h"
#import "RecentsTableViewController.h"
//#import <FontAwesomeKit/FAKIonIcons.h>
#import <FontAwesomeKit/FontAwesomeKit.h>
#import "ContactsTableViewController.h"
#import "KeyPadViewController.h"
#import "VoicemailTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
//    UITabBarItem *favoritesItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
//    UITabBarItem *recentsItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:1];
////    UITabBarItem *contactsItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:2];
//    //FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:15];
//    FAKIonIcons *contactIcon = [FAKIonIcons ios7ContactOutlineIconWithSize:30];
//    FAKIonIcons *selectIcon = [FAKIonIcons ios7ContactIconWithSize:30];
//    UIImage *notSelectedContactIcon = [contactIcon imageWithSize:CGSizeMake(50, 50)];
//    UIImage *selectedContactIcon = [selectIcon imageWithSize:CGSizeMake(50, 50)];
//    
//    FAKIonIcons *keypadIcon = [FAKIonIcons ios7KeypadOutlineIconWithSize:30];
//    FAKIonIcons *keypadSelectIcon = [FAKIonIcons ios7KeypadIconWithSize:30];
//    UIImage *notSelectedKeypadIcon = [keypadIcon imageWithSize:CGSizeMake(30, 30)];
//    UIImage *selectedKeypadIcon = [keypadSelectIcon imageWithSize:CGSizeMake(30, 30)];
//    
//    UITabBarItem *keypadTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Keypad" image:notSelectedKeypadIcon selectedImage:selectedKeypadIcon];
//    //UIImage *normalContactIcon = ;
//    UITabBarItem *contactsItem = [[UITabBarItem alloc] initWithTitle:@"Contacts" image:notSelectedContactIcon selectedImage:selectedContactIcon];
//    
//    
//    UITabBarController *tabBarController = [[UITabBarController alloc] init];
//    
//    FavoritesTableViewController *favoritesTVC = [[FavoritesTableViewController alloc] initWithStyle:UITableViewStylePlain];
//    favoritesTVC.title = @"Favorites";
//    favoritesTVC.tabBarItem = favoritesItem;
//    
//    
//    RecentsTableViewController *recentsTVC = [[RecentsTableViewController alloc] initWithStyle:UITableViewStylePlain];
//    //recentsTVC.title = @"Recents";
//    recentsTVC.tabBarItem = recentsItem;
//    
//    ContactsTableViewController *contactsTVC = [[ContactsTableViewController alloc] initWithStyle:UITableViewStylePlain];
//    contactsTVC.tabBarItem = contactsItem;
//
//    KeyPadViewController *keypadVC = [[KeyPadViewController alloc] init];
//    keypadVC.tabBarItem = keypadTabBarItem;
//    
//    UINavigationController *favoritesNav = [[UINavigationController alloc] initWithRootViewController:favoritesTVC];
//    UINavigationController *recentsNav = [[UINavigationController alloc] initWithRootViewController:recentsTVC];
//    
//    UINavigationController *contactsNav = [[UINavigationController alloc] initWithRootViewController:contactsTVC];
//    
//    
////    FAKIonIcons *voicemailIcon = [FAKFontAwesome vo];
////
//    UIImage *voicemailThin = [UIImage imageNamed:@"VoicemailThin"];
//    UIImage *voicemailThick = [UIImage imageNamed:@"VoicemailFilled"];
//
//    
//    UITabBarItem *voicemailTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Voicemail" image:voicemailThin selectedImage:voicemailThick];
//    
//    VoicemailTableViewController *voicemailVC = [[VoicemailTableViewController alloc] init];
//    voicemailVC.tabBarItem = voicemailTabBarItem;
//    //voicemailVC.title = @"Voicemail";
//    
//    UINavigationController *voicemailNav = [[UINavigationController alloc] initWithRootViewController:voicemailVC];
//    
//    tabBarController.viewControllers = @[favoritesNav, recentsNav, contactsNav, keypadVC, voicemailNav];
//    
//    
    //self.window.rootViewController = tabBarController;
    
    RootTabBarController *rootTabBarController = [[RootTabBarController alloc] init];
    self.window.rootViewController = rootTabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
