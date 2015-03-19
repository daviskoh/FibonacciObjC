//
//  FibonacciSpec.m
//  FibonacciObjC
//
//  Created by Davis Koh on 3/18/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Fibonacci.h"

@interface FibonacciSpec : XCTestCase

@end

@implementation FibonacciSpec

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFibonacci {

    // index: 0, 1, 2, 3, 4, 5, 6, 07, 08, 09
    // fibon: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

    XCTAssertEqual([Fibonacci numberAt: 0], 0);
    XCTAssertEqual([Fibonacci numberAt: 1], 1);
    XCTAssertEqual([Fibonacci numberAt: 2], 1);
    XCTAssertEqual([Fibonacci numberAt: 3], 2);
    XCTAssertEqual([Fibonacci numberAt: 4], 3);
    XCTAssertEqual([Fibonacci numberAt: 5], 5);
    XCTAssertEqual([Fibonacci numberAt: 6], 8);
    XCTAssertEqual([Fibonacci numberAt: 7], 13);
    XCTAssertEqual([Fibonacci numberAt: 8], 21);
    XCTAssertEqual([Fibonacci numberAt: 9], 34);
}
//
//- (void)testFibonacciInvalidNumbers {
//    XCTAssertEqual([_ctrl fibonacci:-2], 1);
//    XCTAssertEqual([_ctrl fibonacci:-1], 1);
//    XCTAssertEqual([_ctrl fibonacci:-2123], 1);
//}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
