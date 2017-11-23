//
//  HeapSort.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 17/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "HeapSort.h"

////////////////HEAP SORT////////////////
int leftLeafIndex(int rootIndex){
    int heapIndex = rootIndex+1;
    return heapIndex*2-1;
}

int rightLeafIndex(int rootIndex){
    int heapIndex = rootIndex+1;
    return heapIndex*2+1-1;
}

int heapLastIndex (NSMutableArray* A){
    return (int)A.count-1;
}

void maxHeapify(NSMutableArray* A, int indexRoot){
    if(leftLeafIndex(indexRoot)>heapLastIndex(A)){
        return;
    }
    
    int rootValue =[A[indexRoot] intValue];
    int largestIndex = indexRoot;
    int largestValue = rootValue;
    
    int leftLeafValue = [A[leftLeafIndex(indexRoot)] intValue];
    if(leftLeafValue>rootValue) {
        largestIndex = leftLeafIndex(indexRoot);
        largestValue = leftLeafValue;
    }
    if(rightLeafIndex(indexRoot)<=heapLastIndex(A)){
        int rightLeafValue = [A[rightLeafIndex(indexRoot)] intValue];
        if(rightLeafValue>largestValue) {
            largestIndex = rightLeafIndex(indexRoot);
            largestValue = rightLeafValue;
        }
    }
    
    if(largestIndex != indexRoot){
        [A exchangeObjectAtIndex:indexRoot withObjectAtIndex:largestIndex];
        maxHeapify(A, largestIndex);
    }
}

void buildMaxHeap(NSMutableArray* A){
    if(A.count<2) return;
    int lastParentIndex = (int)A.count/2;
    for (int parentIndex = lastParentIndex; parentIndex >= 0; parentIndex--) {
        maxHeapify(A, parentIndex);
    }
}

NSMutableArray* heapSort(NSMutableArray* unsortedA){
    if(unsortedA.count<2) return unsortedA;
    buildMaxHeap(unsortedA);
    NSMutableArray* sortedA = [NSMutableArray new];
    for (int i = (int)unsortedA.count-1; i>0; i--) {
        [sortedA insertObject:unsortedA[0] atIndex:0];
        [unsortedA exchangeObjectAtIndex:0 withObjectAtIndex:unsortedA.count-1];
        [unsortedA removeLastObject];
        maxHeapify(unsortedA, 0);
    }
    [sortedA insertObject:unsortedA[0] atIndex:0];
    return sortedA;
}

//Example of use to sort an array:
/*
 NSMutableArray * unsortedArray = [@[@4,@1,@3,@2,@16,@9,@10,@14,@8,@7] mutableCopy];
 NSMutableArray * sortedArray = heapSort(unsortedArray);
 NSLog(@"%@",[sortedArray description]);
 */

