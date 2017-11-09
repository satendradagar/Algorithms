//
//  FindElementInSortedRotatedArray.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 09/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "FindElementInSortedRotatedArray.h"

@implementation FindElementInSortedRotatedArray



+(NSInteger )finElement:(NSNumber *)element InArray:(NSArray *)input {
    
    NSUInteger start = 0;
    NSUInteger end = input.count;
    
    while (start <= end) {
        NSInteger middle = (start + end)/2;
        if (middle >=0 && middle < input.count) {

            if ([input[middle] isEqual:element]) {
                return middle;
            }
            else if (element < input[middle]) {
                        end = middle -1;
                    }
                    else{
                        start = middle + 1;
                    }
            }
            else{
                return  NSNotFound;
            }
    }
    
    
    return NSNotFound;
}

+(void)checkIndexOfElements{
    NSLog(@"------------------------------------------------");
    NSArray *sorted = @[@70,@100,@101,@1,@3,@4,@6,@12,@22,@40];
    NSLog(@"Peak Element: %ld",(long)[self finElement:@6 InArray:sorted]);
    NSLog(@"------------------------------------------------");

}



@end
