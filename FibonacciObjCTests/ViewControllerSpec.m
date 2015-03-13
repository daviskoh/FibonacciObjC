//
//  ViewControllerSpec.m
//  FibonacciObjC
//
//  Created by Davis Koh on 3/12/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

// if this is required, why bother adding
// to test target
#import "ViewController.h"

@interface ViewControllerSpec : XCTestCase
    @property ViewController *ctrl;
@end

@implementation ViewControllerSpec

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _ctrl = [[ViewController alloc] init];
    _ctrl.answerLabel = [[UILabel alloc] init];
    _ctrl.userInput = [[UITextField alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFibonacci {

    // index: 0, 1, 2, 3, 4, 5, 6, 07, 08, 09
    // fibon: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
    
    XCTAssertEqual([_ctrl fibonacci: 0], 0);
    XCTAssertEqual([_ctrl fibonacci: 1], 1);
    XCTAssertEqual([_ctrl fibonacci: 2], 1);
    XCTAssertEqual([_ctrl fibonacci: 3], 2);
    XCTAssertEqual([_ctrl fibonacci: 4], 3);
    XCTAssertEqual([_ctrl fibonacci: 5], 5);
    XCTAssertEqual([_ctrl fibonacci: 6], 8);
    XCTAssertEqual([_ctrl fibonacci: 7], 13);
    XCTAssertEqual([_ctrl fibonacci: 8], 21);
    XCTAssertEqual([_ctrl fibonacci: 9], 34);
}

- (void)testFibonacciInvalidNumbers {
    XCTAssertEqual([_ctrl fibonacci:-2], 1);
    XCTAssertEqual([_ctrl fibonacci:-1], 1);
    XCTAssertEqual([_ctrl fibonacci:-2123], 1);
}

- (void)testCheckNum {
    _ctrl.userInput.text = @"9";
    
    [_ctrl checkNum:@"9"];
    
    NSString *expected = [NSString stringWithFormat:@"%d", [_ctrl fibonacci:9]];
    
    XCTAssertEqualObjects(_ctrl.answerLabel.text, expected, @"should display answer to user");
}

- (void)testCheckNumInvalidInput {
    _ctrl.userInput.text = @"";
    
    NSString *expected = @"Please provide a valid number";
    
    [_ctrl checkNum:@""];
    XCTAssertEqualObjects(_ctrl.answerLabel.text, expected);
    
    [_ctrl checkNum:@"-1"];
    XCTAssertEqualObjects(_ctrl.answerLabel.text, expected);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testClearInput {
    _ctrl.userInput.text = @"1";
    
    [_ctrl checkNum:@""];
    
    XCTAssertEqualObjects(_ctrl.userInput.text, @"");
}

@end
