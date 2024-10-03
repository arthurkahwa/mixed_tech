//
//  Arithmetic.m
//  mixed_tech
//
//  Created by Arthur Nsereko Kahwa on 10/3/24.
//

#import "Arithmetic.h"

@implementation Arithmetic
// Method to add two numbers
- (int)add:(int)a with:(int)b {
    return a + b;
}

// Method to subtract one number from another
- (int)subtract:(int)a with:(int)b {
    return a - b;
}

// Method to multiply two numbers
- (int)multiply:(int)a with:(int)b {
    return a * b;
}

// Method to divide one number by another
// Returns float because division can result in a decimal value
- (float)divide:(int)a with:(int)b {
    if (b != 0) {
        return (float)a / (float)b;
    } else {
        NSLog(@"Error: Division by zero");
        return 0.0;
    }
}

@end
