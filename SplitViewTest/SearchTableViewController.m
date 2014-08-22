//
//  SearchTableViewController.m
//  SplitViewTest
//
//  Created by Stephen Darlington on 22/08/2014.
//  Copyright (c) 2014 Wandle Software Limited. All rights reserved.
//

#import "SearchTableViewController.h"
#import "DetailViewController.h"

@interface SearchTableViewController ()

@end

@implementation SearchTableViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSDate *object = [NSDate date];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SearchCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = @"Search text";
    
    return cell;
}

/*
 
 MARK: "working" version
 
 This can be made to work as expected by deleting the "showDetail" segue from the search view controller
 uncommenting the following method.
 
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // the current view controller doesn't have the splitViewController which means that
    // the detail gets presented without any knowlegde of the detail view... which means it
    // doesn't get the back button (and likely looks bad on the iPad). So... we tell the
    // parent to do the presenting instead
    [self.presentingViewController performSegueWithIdentifier:@"showDetail" sender:self];
}
*/

-(void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    
}

@end
