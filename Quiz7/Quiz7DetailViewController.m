//
//  Quiz7DetailViewController.m
//  Quiz7
//
//  Created by Steve Chakif on 4/9/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import "Quiz7DetailViewController.h"

@interface Quiz7DetailViewController ()
- (void)configureView;
@end

@implementation Quiz7DetailViewController

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.nameTextField setText:_detailItem.name];
    [self.urgencyLabel setText:[NSString stringWithFormat:@"Urgency: %.0f", _detailItem.urgency]];
    self.urgencySlider.value = _detailItem.urgency;
    self.datePicker.date = _detailItem.dueDate;
    self.navigationItem.title = _detailItem.name;
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    _detailItem.name = self.nameTextField.text;
    _detailItem.urgency = self.urgencySlider.value;
    _detailItem.dueDate = self.datePicker.date;
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)sliderChanged:(id)sender {
    UISlider *s = sender;
    [self.urgencyLabel setText:[NSString stringWithFormat:@"Urgency: %.0f", s.value]];
}
@end
