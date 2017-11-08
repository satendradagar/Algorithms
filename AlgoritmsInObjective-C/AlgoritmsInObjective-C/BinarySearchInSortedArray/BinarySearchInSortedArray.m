//
//  BinarySearchInSortedArray.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 08/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinarySearchInSortedArray.h"

@implementation BinarySearchInSortedArray
//Time Complexity O(log n)
//Space Complexity O(1)

+(NSInteger )binarySearchInNsarry:(NSArray *)array value:(NSNumber *)value{
    int steps = 0;
    NSUInteger start = 0;
    NSUInteger end = array.count - 1;
    while(start <= end){
        steps++;
        NSUInteger middle = (start + end)/2;
        NSString *middleValue = array[middle];
        if ([middleValue isEqual:value]) {
            NSLog(@"steps: %d",steps);
            return middle;
        }
        if (middleValue.integerValue > value.integerValue) {
            end = middle -1;
        }
        else{
            start = middle + 1;
        }
    }
    NSLog(@"steps: %d",steps);

    return -1;
}

+(void)testSearch{
    NSArray *sorted = @[@1,@3,@4,@6,@8,@12,@22,@40,@70,@100,@101];
    NSInteger index = [self binarySearchInNsarry:sorted value:@101];
    NSLog(@"Index: %d",index);
}

@end
