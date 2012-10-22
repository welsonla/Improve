//
//  PractBase64ViewController.m
//  Improve
//
//  Created by 万业超 on 12-10-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PractBase64ViewController.h"


@interface PractBase64ViewController ()

@end

@implementation PractBase64ViewController

@synthesize inputField;
@synthesize showBase64Text;

- (void)viewDidLoad{
    
    [self.view setBackgroundColor:[UIColor whiteColor]];

    inputField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 150, 30)];
    [inputField setAutocorrectionType:UITextAutocorrectionTypeNo];
    [inputField.layer setCornerRadius:2.0f];
    [inputField.layer setBorderColor:[[UIColor blackColor]CGColor]];
    [inputField.layer setBorderWidth:0.6f];
    [self.view addSubview:inputField];
    
    
    UIButton *convertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [convertButton setFrame:CGRectMake(220, 50, 80, 30)];
    [convertButton setTitle:@"Base64" forState:UIControlStateNormal];
    [convertButton addTarget:self action:@selector(convertToBase64:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:convertButton];
    
    showBase64Text = [[UITextView alloc ] initWithFrame:CGRectMake(50, 100, 250, 60)];
    [showBase64Text setBackgroundColor:[UIColor clearColor]];
    [showBase64Text setFont:[UIFont systemFontOfSize:12]];
    [showBase64Text.layer setBorderWidth:0.6f];
    [showBase64Text.layer setBorderColor:[[UIColor blackColor]CGColor]];
    [showBase64Text.layer setCornerRadius:2.0f];
    [self.view addSubview:showBase64Text];
    
    
    [super viewDidLoad];
}


- (void)convertToBase64:(id)sender{
    NSString *convertString = [inputField text];
    [showBase64Text setText:[convertString base64EncodedString]];
}

@end
