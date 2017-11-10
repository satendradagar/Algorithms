//
//  FindNextLargestElementInArray.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "FindNextLargestElementInArray.h"
@interface NSMutableArray(Stack)

-(void)pushElement:(id)element;
-(id)popElement;
-(BOOL)isEmpty;

@end

@implementation NSMutableArray(Stack)
-(void)pushElement:(id)element{
    [self addObject:element];
    
}
-(id)topElement{
    id topObject = [self lastObject];
    return topObject;
}

-(id)popElement{
    id topObject = [self lastObject];
    if (topObject) {
        [self removeLastObject];
    }
    return topObject;
}
-(BOOL)isEmpty{
    
    return !self.count;
    
}

@end

@implementation FindNextLargestElementInArray

+(void)findNextGreaterInArray:(NSArray *)objects{
    
    NSMutableArray *stack = [NSMutableArray new];
    NSUInteger count = objects.count;
    [stack pushElement:[objects firstObject]];
    for (int i = 1; i< count ; i++){
//        if ([stack topElement] < objects[i] ) {
//
//        }
        while (![stack isEmpty] && [stack topElement] < objects[i]) {
//            NSLog(@"poping");
            NSLog(@"Next greater element for %@ is %@",stack.popElement, objects[i]);

        }
        [stack pushElement:objects[i]];
    }
    while (!stack.isEmpty) {
        NSLog(@"Next greater element for %@ is %@",stack.popElement, @"null");
    }
}

+(void)testNextAvaiableElement{
    NSLog(@"------------------------------------------------");
    NSArray *input = @[ @98, @23, @54, @12, @20, @7, @27 ];
    [self findNextGreaterInArray:input];
    NSLog(@"------------------------------------------------");

}

@end
