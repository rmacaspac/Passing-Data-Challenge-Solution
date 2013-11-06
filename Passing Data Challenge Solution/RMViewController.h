//
//  RMViewController.h
//  Passing Data Challenge Solution
//
//  Created by Ryan Macaspac on 10/29/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RMDetailViewController.h"

@interface RMViewController : UIViewController <RMDetailViewControllerDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
