//
//  GeneratePermutations.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 08/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "GeneratePermutations.h"

@implementation GeneratePermutations

+(void)generatePermutation:(NSMutableArray *)array fromLeft:(UInt)left toRight:(UInt)right{
    NSLog(@"[%d:%d]",left,right);

    if (left == right) {
        NSLog(@"%@",[array componentsJoinedByString:@"-"]);
        return;
    }
    if (left < right) {
        for (int i = left; i <= right; i++) {
            [array exchangeObjectAtIndex:left withObjectAtIndex:i];
            [self generatePermutation:array fromLeft:left+1 toRight:right];
            [array exchangeObjectAtIndex:i withObjectAtIndex:left];
            
        }
    }
}

+(void)printpermutations{
    NSLog(@"------------------------------------------------");
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"a",@"b",@"c", nil];
    [self generatePermutation:array fromLeft:0 toRight:2];
    NSLog(@"------------------------------------------------");

}


@end
