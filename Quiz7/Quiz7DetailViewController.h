//
//  Quiz7DetailViewController.h
//  Quiz7
//
//  Created by Steve Chakif on 4/9/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quiz7DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
