//
//  RemoveDuplaceOrderdString.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 17/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "RemoveDuplaceOrderdString.h"

@implementation RemoveDuplaceOrderdString

+(NSArray *)arrayByRemovingDuplicateOrderedFrom:(NSArray *)array{
    
    NSMutableDictionary *result = [NSMutableDictionary new];
    for (NSString *word in array) {
        [result setValue:[NSNull null] forKey:word];
    }
    return result.allKeys;
}

+(void)testArrayRemoval{
    NSLog(@"------------------------------------------------");
    NSArray *input = @[@"boy",@"girl",@"cow",@"cat",@"hindi",@"girl",@"boy"];
    NSLog(@"%@",[self arrayByRemovingDuplicateOrderedFrom:input]);
    NSLog(@"------------------------------------------------");
}

@end
