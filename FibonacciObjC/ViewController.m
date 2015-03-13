//
//  ViewController.m
//  FibonacciObjC
//
//  Created by Davis Koh on 3/12/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "ViewController.h"

// Protocols??
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int)fibonacci:(int)n {
    if (n < 0) {
        return 1;
    }
    
    if (n < 2) {
        return n;
    }
    
    int firstFibo = [self fibonacci: (n - 1)];
    
    int secondFibo = [self fibonacci: (n - 2)];
    
    return firstFibo + secondFibo;
}

- (IBAction)checkNum:(id)sender {
    // convert userInput to int
    int userInputInt = [_userInput.text intValue];
    
    if ([_userInput.text isEqualToString: @""] || userInputInt < 0) {
        _answerLabel.text = @"Please provide a valid number";
        return;
    } else {
        // check fibonacci
        int userAnswer = [self fibonacci:userInputInt];
        
        NSString *answer = [NSString stringWithFormat:@"%d", userAnswer];
        
        _answerLabel.text = answer;
    }
    
    _userInput.text = @"";
}

@end
