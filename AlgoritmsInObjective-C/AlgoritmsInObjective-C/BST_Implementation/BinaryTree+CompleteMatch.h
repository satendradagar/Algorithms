//
//  BinaryTree+CompleteMatch.h
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 13/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree.h"

@interface BinaryTree (CompleteMatch)

+(BOOL)isCompleteMatchTree:(Node *)first WithOtherTree:(Node *)second;

@end
