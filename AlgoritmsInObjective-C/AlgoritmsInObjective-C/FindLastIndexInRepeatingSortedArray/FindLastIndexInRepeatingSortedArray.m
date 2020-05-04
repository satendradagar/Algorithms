//
//  FindLastIndexInRepeatingSortedArray.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Dagar on 09/08/18.
//  Copyright © 2018 Satendra. All rights reserved.
//

#import "FindLastIndexInRepeatingSortedArray.h"

@implementation FindLastIndexInRepeatingSortedArray

+(int)findLastIndexFromSortedArray:(NSArray *)array element:(NSNumber *)element{
    
    int start = 0;
    int end = array.count - 1;
    int middle = (start + end)/2;
    
    while (start < end) {
        NSNumber *middleObj = (NSNumber *)array[middle];
        if (middleObj.integerValue > element.integerValue ) {
            end = middle -1;
        }
        else{
            
        }
    }
    
    return 0;
}


+(void)checkIndexOfElements{
    NSLog(@"------------------------------------------------");
    NSArray *sorted = @[@70,@100,@101,@1,@3,@4,@6,@12,@22,@40];
//    NSLog(@"Peak Element: %ld",(long)[self finElement:@6 InArray:sorted]);
    NSLog(@"------------------------------------------------");
    
}



@end
