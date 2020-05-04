//
//  findPythagorianMatchesInArray.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Dagar on 22/10/18.
//  Copyright © 2018 Satendra. All rights reserved.
//

#import "findPythagorianMatchesInArray.h"

@implementation findPythagorianMatchesInArray

//a = b + c
+(void)printPairMatchingWithSum:(NSDictionary *)objects forSum:(NSUInteger)a andInteger:(NSUInteger)b{
    
    NSString *toSearch = [@(a - b) stringValue];
    NSNumber *matched = [objects objectForKey:toSearch];
    NSString *toSearchOther = [@(a + b) stringValue];
    NSNumber *matchedOther = [objects objectForKey:toSearchOther];
    
    if (matched == nil && matchedOther == nil) {
        NSLog(@"Could not find matching for sum:%lu ,b= %lu",(unsigned long)a,(unsigned long)b);
    }
    else if(matchedOther == nil){
        NSLog(@"Found matching par for sum:%lu (b,c)= (%ld, %ld)",(unsigned long)a,b, toSearch.integerValue);

    }
    else{
        NSLog(@"Found matching par for sum:%lu (b,c)= (%ld, %ld)",toSearchOther.integerValue, a,b);

    }
}

+(void)testInputArrayElement{
    NSLog(@"------------------------------------------------3 2 4 6 5");
    NSArray *input = @[ @3, @2, @4, @6, @5, @7, @9 ];
    NSMutableDictionary *squareArray = [NSMutableDictionary new];
    
    for (NSNumber *inp in input) {
        NSString *obj = @(inp.integerValue * inp.integerValue).stringValue;
        [squareArray setValue:@1 forKey:obj];
    }
    for (int i = 0; i < input.count; i++) {
        
        for (int j = i+1; j < input.count; j ++){
            if (j == i ) {
                continue;//skip
            }
            NSUInteger sum = [input[i] integerValue];
            sum = sum * sum;
            NSUInteger b = [input[j] integerValue];
            b = b * b;
//            if (sum < b) {
//                continue;//skip
//            }
            [self printPairMatchingWithSum:squareArray forSum:sum andInteger:b];
        }
        
    }
//    for (NSNumber *inp in input) {
//        NSString *obj = @(inp.integerValue * inp.integerValue).stringValue;
//        
//    }
//    [self findNextGreaterInArray:input];
    NSLog(@"------------------------------------------------");
    
}


@end
