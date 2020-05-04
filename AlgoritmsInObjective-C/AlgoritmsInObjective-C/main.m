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
#import "BinaryTree+ISSiblingsAndCousins.h"
#import "BinaryTree+PostOrder.h"
#import "StringOperations.h"
#import "SortingAlgorithms.h"
#import "RemoveDuplaceOrderdString.h"
#import "findPythagorianMatchesInArray.h"

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
        [BinaryTree testBinaryTree];
        [BinaryTree testCousins];
        [BinaryTree testPostOrder];
        [SortingAlgorithms testSortings];
        NSLog(@"%@", [StringOperations reverseTheWorkdsOfAString:@"Hello This is Satendra OK"]);
        [RemoveDuplaceOrderdString testArrayRemoval];
        [findPythagorianMatchesInArray testInputArrayElement];
    }
    return 0;
}
