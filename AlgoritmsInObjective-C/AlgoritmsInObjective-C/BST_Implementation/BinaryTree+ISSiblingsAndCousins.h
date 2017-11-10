//
//  BinaryTree+ISSiblingsAndCousins.h
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree.h"

@interface Node(AreSiblings)

-(BOOL)areSiblings:(Node *)nodeA andRight:(Node *)nodeB;

-(int)levelForChildNode:(Node *)node withCurrentLevel:(int)currentLevel;

@end

@interface BinaryTree (ISSiblingsAndCousins)

+(void)testCousins;

@end
