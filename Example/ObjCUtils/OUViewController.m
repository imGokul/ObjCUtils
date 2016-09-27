//
//  OUViewController.m
//  ObjCUtils
//
//  Created by Gokulkrishnan Sivasubramaniam on 09/27/2016.
//  Copyright (c) 2016 Gokulkrishnan Sivasubramaniam. All rights reserved.
//

#import "OUViewController.h"
#import <ObjCUtils/OCUtils.h>

@interface OUViewController ()

@end

@implementation OUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(IBAction)printUtils:(id)sender{
    [self utilsPrint];
}

-(void)utilsPrint{
    id sampleObject = nil;
    NSLog(@"sampleObject isValidResponse %d", [sampleObject isValidResponse]);
    NSLog(@"sampleObject isValidString %d", [sampleObject isValidString]);

    sampleObject = @"here is a demo string";
    NSLog(@"sampleObject isValidString %d", [sampleObject isValidString]);
    NSLog(@"sampleObject isValidArray %d", [sampleObject isValidArray]);
    
    sampleObject = @[@"arrObj1"];
    NSLog(@"sampleObject isArray %d", [sampleObject isArray]);
    NSLog(@"sampleObject isValidArray %d", [sampleObject isValidArray]);
    
    sampleObject = @"testMail@test.com";
    NSLog(@"sampleObject isValidEmail %d",[sampleObject isValidEmail]);

    sampleObject = @"27 September 2016";
    NSDate *sampleDate = [sampleObject dateWithFormat:@"dd MMMM yyyy"];
    NSLog(@"sampleObject dateWithFormat %@",sampleDate);
    NSLog(@"sampleDate dayString %@",[sampleDate dayString]);
    NSLog(@"sampleDate monthString %@",[sampleDate monthString]);
    NSLog(@"sampleDate midnightDateTime %@",[sampleDate midnightDateTime]);

    NSLog(@"Hex color %@",[UIColor colorWithHexValue:@"33FF5B"]);
    NSLog(@"Hex color %@",[UIColor colorWithHexValue:@"#A533FF"]);
}


@end
