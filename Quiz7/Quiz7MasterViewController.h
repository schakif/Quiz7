//
//  Quiz7MasterViewController.h
//  Quiz7
//
//  Created by Steve Chakif on 4/9/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface Quiz7MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
