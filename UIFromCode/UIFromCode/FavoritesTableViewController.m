//
//  FavoritesTableViewController.m
//  UIFromCode
//
//  Created by Al Tyus on 3/26/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "FavoritesTableViewController.h"
#import "UIImage+Alpha.h"
#import "UIImage+RoundedImage.h"
#import "FavoritesTableViewCell.h"

@interface FavoritesTableViewController ()

@end

@implementation FavoritesTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        UITabBarItem *favoritesItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
        self.tabBarItem = favoritesItem;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.title = @"Favorites";
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addFavorite)];
    self.tableView.separatorInset = UIEdgeInsetsMake(0, 50, 0, 0);
    self.tableView.rowHeight = 50;
    [self.tableView registerClass:[FavoritesTableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)addFavorite
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    FavoritesTableViewCell *cell = (FavoritesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    //cell.textLabel.text = @"Al Tyus";
    cell.detailTextLabel.text = @"mobile";
    //cell.imageView.image = [UIImage roundedImageWithImage:[[UIImage imageNamed:@"al.jpg"] imageWithAlpha]];
    
    cell.nameLabel.text = @"Al Tyus"; 
    cell.pictureImageView.image = [UIImage roundedImageWithImage:[[UIImage imageNamed:@"al.jpg"] imageWithAlpha]];
    return cell;
}


@end
