//
//  ViewController.h
//  FibonacciObjC
//
//  Created by Davis Koh on 3/12/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UITextField *userInput;


- (int)fibonacci:(int)n;

- (IBAction)checkNum:(id)sender;

@end

