//
//  RMViewController.m
//  Passing Data Challenge Solution
//
//  Created by Ryan Macaspac on 10/29/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "RMViewController.h"
#import "RMDetailViewController.h"

@interface RMViewController ()

@end

@implementation RMViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]])
    {
        if ([segue.destinationViewController isKindOfClass:[RMDetailViewController class]]) {
            RMDetailViewController *nextViewController = segue.destinationViewController;
            nextViewController.textInput = self.textField.text;
            nextViewController.delegate = self;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - RMDetailViewController Delegate

- (void)didUpdateText:(NSString *)text
{
    self.textField.text = text;
}

#pragma mark UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}


@end
