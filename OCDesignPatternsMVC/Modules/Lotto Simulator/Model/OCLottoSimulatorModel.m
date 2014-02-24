//
//  OCLottoSimulatorModel.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCLottoSimulatorModel.h"
#include <stdlib.h>

@interface OCLottoSimulatorModel ()

@property (nonatomic, strong) NSArray *numbersArray;

@end

@implementation OCLottoSimulatorModel

static const NSInteger kLottoSimulatorAmountOfNumbers = 6;
static const NSInteger kLottoSimulatorLowestNumber = 1;
static const NSInteger kLottoSimulatorHighestNumber = 49;

#pragma mark - Public methods
- (NSString *)numbersAsString
{
    NSString *numbersAsString = [self stringFromNumbersArray:self.numbersArray];
    
    return numbersAsString;
}

- (void)randNumbers
{
    NSMutableArray *numbersArray = [NSMutableArray new];
    
    NSInteger iter = 0;
    while (iter < kLottoSimulatorAmountOfNumbers) {
        NSNumber *randNumber = [self randNumber];
        
        if ([numbersArray containsObject:randNumber]) {
            continue;
        }
        
        [numbersArray addObject:randNumber];
        ++iter;
    }
    
    self.numbersArray = numbersArray;
}

- (void)sortNumbers
{
    if (self.numbersArray == nil) {
        return;
    }
    
    NSArray *sortedArray = [self.numbersArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        NSNumber *firstNumber = obj1;
        NSNumber *secondNumber = obj2;
        
        if (firstNumber.intValue >= secondNumber.intValue) {
            return YES;
        }
        return NO;
    }];
    
    self.numbersArray = sortedArray;
}

#pragma mark - Private methods
- (NSNumber *)randNumber
{
    int randNumberInt = (arc4random() % kLottoSimulatorHighestNumber) + 1;
    
    NSNumber *randNumber = [NSNumber numberWithInt:randNumberInt];
    
    return randNumber;
}

- (NSString *)stringFromNumbersArray:(NSArray *)numbersArray
{
    NSMutableString *string = [NSMutableString new];
    for (int i = 0; i < numbersArray.count; ++i) {
        NSNumber *number = [numbersArray objectAtIndex:i];
        [string appendString:number.stringValue];
        if (i + 1 < numbersArray.count) {
            [string appendString:@" "];
        }
    }
    return string;
}

@end

