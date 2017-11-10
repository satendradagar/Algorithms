//
//  main.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 08/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearchInSortedArray.h"
#import "GeneratePermutations.h"
#import "FilePeakElements.h"
#import "FindElementInSortedRotatedArray.h"
#import "KadeAlgoMaxSumSubaaray.h"
#import "FindNextLargestElementInArray.h"
#import "FibnocciSeries.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        [BinarySearchInSortedArray testSearch];
        [GeneratePermutations printpermutations];
        [FilePeakElements checkPeakElements];
        [FindElementInSortedRotatedArray checkIndexOfElements];
        [KadeAlgoMaxSumSubaaray findMaxSumSubarray];
        [FindNextLargestElementInArray testNextAvaiableElement];
        [FibnocciSeries testFibnocci];
    }
    return 0;
}
