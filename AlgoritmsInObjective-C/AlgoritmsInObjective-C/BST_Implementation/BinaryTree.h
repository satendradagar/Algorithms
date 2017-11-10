//
//  BinaryTree.h
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property(nonatomic, assign) int data;
@property(nonatomic, strong) Node * right;
@property(nonatomic, strong) Node * left;

- (void) insert:(Node *)node;

-(BOOL)isBalancedNode;

-(BOOL)isBSTTest;

@end

@interface BinaryTree : NSObject

@property (nonatomic, retain) Node *rootNode;

- (void)insertNode:(Node *)node;

-(instancetype)initBinaryTree:(NSArray *)nodes;

+(void)testBinaryTree;

@end
