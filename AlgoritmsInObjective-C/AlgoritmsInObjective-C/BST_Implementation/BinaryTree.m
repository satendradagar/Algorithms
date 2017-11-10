//
//  BinaryTree.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree.h"

@implementation Node

- (void) insert:(Node *)node
{
    if(node.data > self.data) // using properties, could also use fields ->
    {
        NSLog(@"Right=:[%d]",node.data);
        if(self.right != nil)
            [self.right insert:node];
        else
            self.right = node;
    }
    else if(node.data < self.data)
    {
        NSLog(@"Left=:[%d]",node.data);
        if(self.left != nil)
            [self.left insert:node];
        else
            self.left = node;
    }
    
}

-(BOOL)isBalancedNode{
    BOOL isValid = YES;
    BOOL isLeftValid = YES;
    BOOL isRightValid = YES;

    if (self.left != nil) {
        if (self.left.data > self.data) {
            isValid = NO;
        }
        

    }
    if (self.right != nil) {
        if (self.right.data < self.data) {
            isValid = NO;
        }

    }
    if (isValid) {
        //check left, check right
        if (self.left != nil) {
            isLeftValid = [self.left isBalancedNode];
        }
        if (self.right != nil) {
            isRightValid = [self.right isBalancedNode];
        }
    }
 
    NSLog(@"ISBALNCED: %d",self.data);
    return isValid && isLeftValid && isRightValid;
}
@end

@implementation BinaryTree

- (void)insertNode:(Node *)node {
    if (_rootNode == nil) {
        _rootNode = node;
        NSLog(@"Root=:[%d]",node.data);
    } else {
        [_rootNode insert:node];
    }
}

- (void)insertNodeValue:(int)value {
    Node *node = [Node new];
    node.data = value;
    [self insertNode:node];
}

-(BOOL)isBSTTest{
    if (_rootNode == nil) {
        return YES;
    }
    return [_rootNode isBalancedNode];
}

+(BOOL)isBSTTestWithRoot:(Node *)root andLow:(NSInteger)low andHigh:(NSInteger)high{
    if (root == nil) {
        return YES;
    }
    else if (root.data > low && root.data < high) {
        return  [self isBSTTestWithRoot:root.left andLow:low andHigh:root.data] && [self isBSTTestWithRoot:root.right andLow:root.data andHigh:high];
    }
    else{
        return NO;
    }
}

-(instancetype)initBinaryTree:(NSArray *)nodes
{
    self = [super init];
    if (self) {
        for (NSNumber *num in nodes) {
            [self insertNodeValue:num.intValue];
        }
    }
    return self;
}

+(void)testBinaryTree{
    NSLog(@"------------------------------------------------");
    BinaryTree *tree = [[BinaryTree alloc] initBinaryTree:@[@4,@2,@6,@1,@3,@5,@7]];
//   BOOL isBST = [BinaryTree isBSTTestWithRoot:tree.rootNode andLow:NSIntegerMin andHigh:NSIntegerMax];
    BOOL isBST = [tree isBSTTest];

    NSLog(@"IS BST: %d",isBST);
    NSLog(@"------------------------------------------------");


}
@end
