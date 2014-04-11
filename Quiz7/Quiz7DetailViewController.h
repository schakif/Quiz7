//
//  Quiz7DetailViewController.h
//  Quiz7
//
//  Created by Steve Chakif on 4/9/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Quiz7DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Task *detailItem;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *urgencyLabel;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)save:(id)sender;
- (IBAction)sliderChanged:(id)sender;


@end
