//
//  ViewController.h
//  HelloPoly
//
//  Created by CISSAPP-13M on 5/13/15.
//  Copyright (c) 2015 Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIStepper *stepper;
@property (strong, nonatomic) IBOutlet UILabel *result;
- (IBAction)stepper:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)buttonPressed:(id)sender
{
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.", title];
    _statusLabel.text = plainText;
}
@end

