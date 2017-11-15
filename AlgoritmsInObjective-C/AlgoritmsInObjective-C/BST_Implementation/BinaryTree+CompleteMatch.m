//
//  BinaryTree+CompleteMatch.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 13/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree+CompleteMatch.h"

@implementation BinaryTree (CompleteMatch)

+(BOOL)isCompleteMatchTree:(Node *)first WithOtherTree:(Node *)second{
    
    if (nil == first && nil == second) {
        return true;
    }
    if (nil == first || nil == second) {
        return false;
    }
    
    if (first.data == second.data) {
        return [self isCompleteMatchTree:first.left WithOtherTree:second.left] && [self isCompleteMatchTree:first.right WithOtherTree:second.right];
    }
    
    return false;
}

@end
