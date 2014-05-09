//
//  ContactsTableViewController.m
//  UIFromCode
//
//  Created by Al Tyus on 3/26/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "ContactsTableViewController.h"
#import <FontAwesomeKit/FontAwesomeKit.h> 

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        FAKIonIcons *contactIcon = [FAKIonIcons ios7ContactOutlineIconWithSize:30];
        FAKIonIcons *selectIcon = [FAKIonIcons ios7ContactIconWithSize:30];
        UIImage *notSelectedContactIcon = [contactIcon imageWithSize:CGSizeMake(50, 50)];
        UIImage *selectedContactIcon = [selectIcon imageWithSize:CGSizeMake(50, 50)];
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Contacts" image:notSelectedContactIcon selectedImage:selectedContactIcon];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.title = @"All Contacts";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Groups" style:UIBarButtonItemStylePlain target:self action:@selector(groupsPressed)];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    
    UITableViewController *tvc = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
    UISearchDisplayController *searchDisplayController = [[UISearchDisplayController alloc] initWithSearchBar:searchBar contentsController:tvc];
    [searchDisplayController setDisplaysSearchBarInNavigationBar:YES];
    
    [self.tableView setTableHeaderView:searchBar];
    

}

- (void)groupsPressed
{
    NSLog(@"Groups Button Pressed");
}
- (void)addButtonPressed
{
    NSLog(@"Add Button Pressed");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[[self class] sectionTitles] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 100;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [[self class] sectionTitles][section];
}
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return [[self class] sectionTitles];
}

+ (NSArray *)sectionTitles
{
    return @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"#"];

}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
{
    return index;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...

    cell.textLabel.text = @"Al Tyus";
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
