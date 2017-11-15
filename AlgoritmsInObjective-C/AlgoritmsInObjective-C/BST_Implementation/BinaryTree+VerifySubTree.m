//
//  BinaryTree+VerifySubTree.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 13/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree+VerifySubTree.h"
#import "BinaryTree+CompleteMatch.h"

@implementation BinaryTree (VerifySubTree)

+(BOOL)isSubtreeMatchTree:(Node *)bigTree WithOtherTree:(Node *)smallTree{
   
    if (smallTree == nil)
    {
        return true;
    }
    if (bigTree == nil)
    {
        return false;
    }
    
    if (bigTree.data == smallTree.data) {
        return [BinaryTree isCompleteMatchTree:bigTree WithOtherTree:smallTree];
    }
    else
    {
        return [BinaryTree isCompleteMatchTree:bigTree.left WithOtherTree:smallTree] || [BinaryTree isCompleteMatchTree:bigTree.right WithOtherTree:smallTree];
    }
    return false;
}

@end
