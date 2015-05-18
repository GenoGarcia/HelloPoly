//
//  ViewController.m
//  HelloPoly
//
//  Created by CISSAPP-13M on 5/13/15.
//  Copyright (c) 2015 Garcia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    
    	//Set the stepper to behave like we want
    _buttonPressedmaximumValue = fmax;
    _buttonPressed.minimumValue = fmin;
    _buttonPressed.stepValue = 1.0;
    
    	//Initialize some variables
    	_buttonPressed.value = 5;
    	nSides = 5;
    
    	names = @[@"Triangle", @"Quadrilateral", @"Pentagon", @"Hexagon", @"Heptagon", @"Octagon", @"Nonigon", @"Decagon", @"Hendecagon", @"Dodecagon"];
    
    	[self update];
    
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepper:(id)sender {
}
- (IBAction)buttonPressed:(id)sender {
}

//Action handler for the buttons
- (IBAction)buttonPressed:(id)sender:(UIButton *)sender forEvent:(UIEvent *)event
{
    	//Change nSides
    	nSides = _buttonPressed.value;
    
    	//Update the label and drawing
    	[self update];
    
    }

- (void)update
{
    	float angles = [self calcAngles: nSides];
    
    	//float angles = calcAngles(nSides);
    	[_resultsLabel setText:[NSString stringWithFormat:@"Sides: %d | %@\nAngles: %.0f° | %.2fr", nSides, names[nSides - 3], angles, angles * M_PI / 180]];
@end
