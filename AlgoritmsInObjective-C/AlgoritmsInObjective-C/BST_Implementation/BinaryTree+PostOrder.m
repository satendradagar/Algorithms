//
//  BinaryTree+PostOrder.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "BinaryTree+PostOrder.h"


@implementation BinaryTree (PostOrder)


-(void)printPostorder:(Node *)node{
    if (node == nil) {
        return;
    }
    [self printPostorder:node.left];
    [self printPostorder:node.right];
    NSLog(@"%d->",node.data);
}
-(void)printPostorder{
    
    [self printPostorder:self.rootNode];
}

+(void)testPostOrder{
    NSLog(@"------------------------------------------------");
    BinaryTree *tree = [[BinaryTree alloc] initBinaryTree:@[@4,@2,@6,@1,@3,@5,@7]];//True case
    
     [tree printPostorder];
    
//    NSLog(@"areCousins: %d",areCousins);
    NSLog(@"------------------------------------------------");
    
}
/*
 public void deleteKLessPath(int k) {
 36            int sum[] = new int[1];
 37            deleteKLessPath(this.root, sum, k);
 38            if (sum[0] < k)
 39                root = null;
 40        }
 41
 42        public Node deleteKLessPath(Node node, int[] sum, int k) {
 43            if (node == null)
 44                return null;
 45
 46            int[] ls = new int[1];
 47            int[] rs = new int[1];
 48            ls[0] = rs[0] = sum[0] + node.data;
 49
 50            node.left = deleteKLessPath(node.left, ls, k);
 51            node.right = deleteKLessPath(node.right, rs, k);
 52
 53            sum[0] = ls[0] > rs[0] ? ls[0] : rs[0];
 54            if (sum[0] < k) {
 55                node = null;
 56            }
 57            return node;
 58        }
 */
@end
