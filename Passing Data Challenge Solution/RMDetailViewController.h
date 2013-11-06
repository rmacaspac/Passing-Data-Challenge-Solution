//
//  RMDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Ryan Macaspac on 10/29/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RMDetailViewControllerDelegate <NSObject>

-(void)didUpdateText:(NSString *)text;

@end

@interface RMDetailViewController : UIViewController

@property (weak, nonatomic) id <RMDetailViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *textInput;
@property (strong, nonatomic) IBOutlet UITextField *textField;


- (IBAction)updateButton:(UIButton *)sender;


@end
