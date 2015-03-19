//
//  Fibonacci.m
//  FibonacciObjC
//
//  Created by Davis Koh on 3/18/15.
//  Copyright (c) 2015 com.DavisKoh. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci

+ (int)numberAt:(int)n {
  if (n < 0) {
    return 1;
  }
  
  if (n < 2) {
    return n;
  }
  
  int firstFibo = [[self class] numberAt: (n - 1)];
  
  int secondFibo = [[self class] numberAt: (n - 2)];
  
  return firstFibo + secondFibo;
}

@end
