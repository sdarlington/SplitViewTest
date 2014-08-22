//
//  DetailViewController.h
//  SplitViewTest
//
//  Created by Stephen Darlington on 19/08/2014.
//  Copyright (c) 2014 Wandle Software Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

