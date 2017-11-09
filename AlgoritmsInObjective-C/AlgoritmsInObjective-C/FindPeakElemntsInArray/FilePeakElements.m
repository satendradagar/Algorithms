//
//  FilePeakElements.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 09/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "FilePeakElements.h"

@implementation FilePeakElements

+(BOOL)isPeakIndex:(NSUInteger)index inArray:(NSArray *)array{
    NSInteger previous = index - 1;
    NSInteger next = index + 1;
    if (previous>=0) {
        if (next < array.count) {
            if (array[index] > array[previous] && array[index] > array[next]) {
                return YES;
            }
        }
    }
    return NO;
}

+(NSArray *)peakElementsInArray:(NSArray *)input {
    
    NSMutableArray *peakElements = [NSMutableArray new];
    NSUInteger start = 0;
    NSUInteger end = input.count;
    
    while (start <= end) {
        NSInteger middle = (start + end)/2;
        if ([self isPeakIndex:middle inArray:input]) {
            [peakElements addObject:input[middle]];
        }
        if (middle >=0 && middle < input.count) {
            if (input[middle-1] > input[middle]) {
                end = middle -1;
            }
            else{
                start = middle + 1;
            }
        }
        else{
            break;
        }
    }
    
    
    return peakElements;
}

+(void)checkPeakElements{
    NSLog(@"------------------------------------------------");

    NSArray *sorted = @[@1,@3,@4,@6,@12,@22,@8,@40,@100,@70,@101];
    NSLog(@"Peak Element: %@",[self peakElementsInArray:sorted]);
    NSLog(@"------------------------------------------------");

}

@end
