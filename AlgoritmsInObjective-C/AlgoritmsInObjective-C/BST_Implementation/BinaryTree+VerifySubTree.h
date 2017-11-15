//
//  BinaryTree+VerifySubTree.h
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 13/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree.h"

@interface BinaryTree (VerifySubTree)

+(BOOL)isSubtreeMatchTree:(Node *)first WithOtherTree:(Node *)second;

@end
