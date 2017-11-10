//
//  KadeAlgoMaxSumSubaaray.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 09/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "KadeAlgoMaxSumSubaaray.h"

@implementation KadeAlgoMaxSumSubaaray

+(NSInteger)findMaxSumSubaaryInArray:(NSArray *)array{
    
    NSInteger currentSum = 0, maxSum = 0;
    for (NSNumber *current in array) {
        currentSum += current.integerValue;
        if (currentSum < 0) {
            currentSum = 0;
        }
        if (currentSum > maxSum) {
            maxSum = currentSum;
        }
    }
    return maxSum;
}

+(void)findMaxSumSubarray{
    NSLog(@"------------------------------------------------");
  NSArray *input = @[@2, @(-9), @5, @1, @(-4), @6, @0, @(-7), @8];
    NSLog(@"KADE SUM = %ld",(long)[self findMaxSumSubaaryInArray:input]);
    NSLog(@"------------------------------------------------");

}

@end
