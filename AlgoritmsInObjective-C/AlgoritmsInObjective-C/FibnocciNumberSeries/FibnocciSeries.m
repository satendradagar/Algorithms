//
//  FibnocciSeries.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 10/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "FibnocciSeries.h"

@implementation FibnocciSeries

+(NSUInteger)fibnocciSeriesUpto:(NSUInteger)number{
    if (number == 0 || number == 1) {
        NSLog(@"%lu,",(unsigned long)number);
        return number;
    }
    NSUInteger generated =  [self fibnocciSeriesUpto:number-2] + [self fibnocciSeriesUpto:number-1];
    NSLog(@"%lu,",(unsigned long)generated);
    return generated;
}

+(void)testFibnocci{
    NSLog(@"------------------------------------------------");
    [self fibnocciSeriesUpto:8];
    NSLog(@"------------------------------------------------");
    

}
@end
