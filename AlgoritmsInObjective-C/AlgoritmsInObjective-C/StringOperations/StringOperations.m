//
//  StringOperations.m
//  AlgoritmsInObjective-C
//
//  Created by Satendra Singh on 16/11/17.
//  Copyright © 2017 Satendra. All rights reserved.
//

#import "StringOperations.h"

@implementation StringOperations

+(void)matchCharacterSequencesInAStringForaColleciton{
    NSString *str1 = @"Hello";
    NSString *str2 = @"ABCHELLOXYZ";
    [str2 rangeOfString:str1];
    
}

+(void)reverseString{
    NSString *str1 = @"Hello This is A Apple";
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [str1 length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[str1 substringWithRange:subStrRange]];
    }
    NSLog(@"%@", reversedString);
}

+(NSString *)reverseTheWorkdsOfAString:(NSString *)input{
    NSArray *words = [input componentsSeparatedByString:@" "];
    NSEnumerator *backEnumerator = words.reverseObjectEnumerator;
    NSString *currentWord = nil;
    NSMutableString *finalString = [[NSMutableString alloc] initWithCapacity:input.length];
    while (currentWord = backEnumerator.nextObject) {
        [finalString appendString:currentWord];
//        if ([backEnumerator nextObject] != nil) {
            [finalString appendString:@" "];
//        }
    }
    return finalString;

}
@end
