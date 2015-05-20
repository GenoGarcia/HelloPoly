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

static NSArray * types; 

- (void)viewDidLoad {
    [super viewDidLoad];
    
	types = @[@"Triangle", @"Quadrilateral", @"Pentagon", @"Hexagon", @"Heptagon", @"Octagon", @"Nonigon", @"Decagon", @"Hendecagon", @"Dodecagon"];
	[self update];
}

- (IBAction)stepper:(UIStepper *)sender {
	[self update];
}

- (float)calcAngles {
	float interiorAngles = (180 * (_stepper.value - 2)) / _stepper.value;
	return interiorAngles;
}
- (void)update
{
	float angles = [self calcAngles];

	//float angles = calcAngles(nSides);
	[_result setText:[NSString stringWithFormat:@"Sides: %f\n%@\nAngles: %.0f° or %.2fr", _stepper.value, types[(int)_stepper.value - 3], angles, angles * M_PI / 180]];
}
@end