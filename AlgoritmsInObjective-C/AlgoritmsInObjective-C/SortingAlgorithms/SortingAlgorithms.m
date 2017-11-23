//
//  SortingAlgorithms.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 17/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "SortingAlgorithms.h"

@implementation SortingAlgorithms


+ (NSArray *)bubbleSort:(NSMutableArray *)unsortedDataArray
{
    long count = unsortedDataArray.count;
    int i;
    bool swapped = TRUE;
    while (swapped){
        swapped = FALSE;
        for (i=1; i<count;i++)
        {
            if ([unsortedDataArray objectAtIndex:(i-1)] > [unsortedDataArray objectAtIndex:i])
            {
                [unsortedDataArray exchangeObjectAtIndex:(i-1) withObjectAtIndex:i];
                swapped = TRUE;
            }
            //bubbleSortCount ++; //Increment the count everytime a switch is done, this line is not required in the production implementation.
        }
    }
    return unsortedDataArray;
}

+ (NSArray *)selectionSort:(NSMutableArray *)unsortedDataArray{
    int pointerMin;
    int i,j;
    long count = unsortedDataArray.count;
    
    for (j=0; j<count;j++ )
    {
        //for each element in the array, assume that the first element is the minimum number
        pointerMin =j;
        for (i=j+1;i<count;i++)
        {
            //Iterate through each element in the array starting from the next element and compare with minimum number set from the outer for loop
            if ([unsortedDataArray objectAtIndex:i] < [unsortedDataArray objectAtIndex:pointerMin] )
            {
                pointerMin = i; //Change pointer to minimum number if new min found
                //                selectionSortCount++;
            }
        }
        if (pointerMin !=j) //if new pointer is not same as the old pointer then swap
        {
            [unsortedDataArray exchangeObjectAtIndex:j withObjectAtIndex:pointerMin];
        }
    }
    return unsortedDataArray;
}

+ (NSArray *)insertionSort:(NSMutableArray *)unsortedDataArray
{
    long count = unsortedDataArray.count;
    int i,j;
    for (i=1; i<count;i++)
    {
        j=i;
        while(j>0)
        {
            if ([[unsortedDataArray objectAtIndex:(j-1)] intValue] > [[unsortedDataArray objectAtIndex:j] intValue]) {
                
                [unsortedDataArray exchangeObjectAtIndex:j withObjectAtIndex:(j-1)];
                
            }
            j=j-1;
            //            insertionSortCount++;
        }
    }
    return unsortedDataArray;
}

+ (NSMutableArray *)mergeQuickSortedArray:(NSMutableArray *)small large:(NSMutableArray *)large andPivot:(NSNumber *)pivotValue{
    
    //    [small addObject:pivotValue];
    [small addObjectsFromArray:large];
    return small;
}

+(NSMutableArray *)quickSort:(NSMutableArray *)input{
    
    if (input.count > 1) {
        
        NSMutableArray *smallElememts = [[NSMutableArray alloc]init];
        NSMutableArray *largeElememts = [[NSMutableArray alloc]init];
        
        int pivot = arc4random()%[input count];
        NSNumber *pivotValue = input[pivot];
        
        for(int i=0;i<input.count; i++){
            NSNumber *currentValue = input[i];
            if(currentValue < pivotValue){
                [smallElememts addObject:currentValue];
            }
            else{
                [largeElememts addObject:currentValue];
                
            }
        }
        smallElememts = [self quickSort:smallElememts];
        largeElememts = [self quickSort:largeElememts];
        [self mergeQuickSortedArray:smallElememts large:largeElememts andPivot:pivotValue];
        return smallElememts;
        
    }
    else{
        return input;
    }
}

+ (void)generateFibonnaciSeries
{
    NSMutableArray *mArray = [NSMutableArray new];
    NSNumber *fibNum1 = [NSNumber numberWithDouble:1];
    NSNumber *fibNum2 = [NSNumber numberWithDouble:1];
    [mArray addObject:fibNum1];
    [mArray addObject:fibNum2];
    
    for (int i=2; i<20; i++)
    {
        [mArray addObject:[NSNumber numberWithDouble:[[mArray objectAtIndex:i-1] doubleValue] +[[mArray objectAtIndex:i-2] doubleValue]]];
    }
    NSLog(@"mArray %@",mArray);
}


+ (NSArray *)mergeSort:(NSArray *)unsortedArray
{
    if ([unsortedArray count] < 2)
    {
        return unsortedArray;
    }
    long middle = ([unsortedArray count]/2);
    NSRange left = NSMakeRange(0, middle);
    NSRange right = NSMakeRange(middle, ([unsortedArray count] - middle));
    NSArray *rightArr = [unsortedArray subarrayWithRange:right];
    NSArray *leftArr = [unsortedArray subarrayWithRange:left];
    //Or iterate through the unsortedArray and create your left and right array
    //for left array iteration starts at index =0 and stops at middle, for right array iteration starts at midde and end at the end of the unsorted array
    NSArray *resultArray =[self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]];
    return resultArray;
}

+ (NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    int right = 0;
    int left = 0;
    while (left < [leftArr count] && right < [rightArr count])
    {
        if ([[leftArr objectAtIndex:left] intValue] < [[rightArr objectAtIndex:right] intValue])
        {
            [result addObject:[leftArr objectAtIndex:left++]];
        }
        else
        {
            [result addObject:[rightArr objectAtIndex:right++]];
        }
    }
    NSRange leftRange = NSMakeRange(left, ([leftArr count] - left));
    NSRange rightRange = NSMakeRange(right, ([rightArr count] - right));
    NSArray *newRight = [rightArr subarrayWithRange:rightRange];
    NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
    newLeft = [result arrayByAddingObjectsFromArray:newLeft];
    return [newLeft arrayByAddingObjectsFromArray:newRight];
}


static int bubbleSortCount;
+ (void)testSortings {
    
    [self generateFibonnaciSeries];
    //Begin test Bubble Sorting Code
    NSArray *dArray =@[@101, @201, @301,@121,@11,@123,@21,@14,@32,@76,@89,@987,@65];
    NSMutableArray *dataArray = [NSMutableArray arrayWithArray:dArray];
    
    //Check Bubble Sort
    //    NSArray *bubbleSortedArray = [self bubbleSort:dataArray];
    
    //Check the Selection Sort
    //    NSArray *bubbleSortedArray = [self selectionSort:dataArray];
    
    NSArray *bubbleSortedArray = [self quickSort:dataArray];
    
    NSLog(@"bubbleSortCount %d",bubbleSortCount);     //Number of Iterations //bubbleSortCount is a static variable initialized to 0 //Gives the average & worst case of n^2
    NSLog(@"bubbleSortedArray %@",bubbleSortedArray); //Prints the sorted array
    bubbleSortCount =0;  //Reinitialize the static variable to 0 to retest
    //    NSLog(@"bubbleSortedArray %@",[self bubbleSort:bubbleSortedArray]); //Resort the already sorted array
    NSLog(@"bubbleSortCount %d",bubbleSortCount); //Gives the best case count of n
    //End test Bubble Sorting Code
    
}

@end
