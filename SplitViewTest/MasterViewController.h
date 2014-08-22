//
//  MasterViewController.h
//  SplitViewTest
//
//  Created by Stephen Darlington on 19/08/2014.
//  Copyright (c) 2014 Wandle Software Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) UISearchController* searchController;

@end

