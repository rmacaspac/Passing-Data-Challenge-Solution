//
//  RMDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Ryan Macaspac on 10/29/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "RMDetailViewController.h"

@interface RMDetailViewController ()

@end

@implementation RMDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.label.text = self.textInput;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateButton:(UIButton *)sender
{
    self.label.text = self.textField.text;
    [self.delegate didUpdateText:self.textField.text];
}
@end
