//
//  BinaryTree+ISSiblingsAndCousins.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree+ISSiblingsAndCousins.h"

@implementation Node (AreSiblings)

-(BOOL)areSiblings:(Node *)nodeA andRight:(Node *)nodeB{
    
    if (nodeA != nodeB) {
        BOOL thisIsParent = (nodeB == self.right && nodeA == self.left) ||  (nodeA == self.right && nodeB == self.left);
        if (NO == thisIsParent) {//Try to find parent in childs
            BOOL isLeftAsParent = [self.left areSiblings:nodeA andRight:nodeB];
            if (NO == isLeftAsParent) {//Left is not parent, try on right side
                BOOL isRightAsParent = [self.right areSiblings:nodeA andRight:nodeB];
                return isRightAsParent;
            }
            else{
                return isLeftAsParent;
            }
        }
        else{
            return YES;
        }
    }
    return NO;
}

-(int)levelForChildNode:(Node *)node withCurrentLevel:(int)currentLevel{
    if (node == nil) {//Not matching node, end of tree
        return 0;
    }
    if (self == node)//Matched
        return currentLevel;
        int level = [self.left levelForChildNode:node withCurrentLevel:currentLevel + 1];//Lookup in left side for node
        if (level != 0) {//We got index
            return level;
        } else{
            return level = [self.right levelForChildNode:node withCurrentLevel:currentLevel + 1];//Lookup in Right side for node
        }
}
@end

@implementation BinaryTree (ISSiblingsAndCousins)

-(BOOL)areCousin:(Node *)nodeA andRight:(Node *)nodeB{
    
    if (nodeA == nodeB) {
        return false;
    }
    BOOL areSiblings = [self.rootNode areSiblings:nodeA andRight:nodeB];
    NSLog(@"areSiblings: %d",areSiblings);
    int levelA = [self.rootNode levelForChildNode:nodeA withCurrentLevel:0];
    int levelB = [self.rootNode levelForChildNode:nodeB withCurrentLevel:0];
    NSLog(@"levelA:%d, levelB:%d",levelA,levelB);
    if (NO == areSiblings && levelA == levelB) {
        return YES;
    }
    return NO;
}

+(void)testCousins{
    NSLog(@"------------------------------------------------");
//    BinaryTree *tree = [[BinaryTree alloc] initBinaryTree:@[@1,@2,@3,@4,@5,@6,@7]];//False case
    BinaryTree *tree = [[BinaryTree alloc] initBinaryTree:@[@4,@2,@6,@1,@3,@5,@7]];//True case

    //   BOOL isBST = [BinaryTree isBSTTestWithRoot:tree.rootNode andLow:NSIntegerMin andHigh:NSIntegerMax];
    BOOL areCousins = [tree areCousin: tree.rootNode.left.right andRight:tree.rootNode.right.left];
    
    NSLog(@"areCousins: %d",areCousins);
    NSLog(@"------------------------------------------------");

}
@end
