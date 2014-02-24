//
//  OCLottoSimulatorModelTests.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OCLottoSimulatorModel.h"

@interface OCLottoSimulatorModelTests : XCTestCase

@property (nonatomic, strong) OCLottoSimulatorModel *lottoSimulatorModel;

@end

@implementation OCLottoSimulatorModelTests

- (void)testRandNumbersAndResultIsNotNil
{
    // when
    [self.lottoSimulatorModel randNumbers];
    
    // then
    XCTAssertNotNil(self.lottoSimulatorModel.numbersAsString, @"NumbersString is nil.");
}

- (void)testRandSixNumbers
{
    // when
    [self.lottoSimulatorModel randNumbers];
    
    // then
    NSArray *numbersArray = [self.lottoSimulatorModel.numbersAsString componentsSeparatedByString:@" "];
    XCTAssertEqual(6u, numbersArray.count, @"NumbersString doesn't have 6 elements.");
}

- (void)testRandProperNumbers
{
    for (int testsIter = 0; testsIter < 10000; ++testsIter) {
        // when
        [self.lottoSimulatorModel randNumbers];
    
        // then
        NSArray *numbersArray = [self.lottoSimulatorModel.numbersAsString componentsSeparatedByString:@" "];
        for (NSString *number in numbersArray) {
            XCTAssertTrue(number.intValue > 0, @"RandNuber is not greater than 0.");
            XCTAssertTrue(number.intValue < 50, @"RandNumber is not lower than 50.");
        }
    }
}

- (void)testRandNumber
{
    // given
    NSUInteger capacity = 100000;
    NSMutableArray *randNumbers = [[NSMutableArray alloc] init];
    BOOL occurredNumbersArray[49];
    
    // when
    for (int i = 0; i < capacity; ++i) {
        NSNumber *randNumber = [self.lottoSimulatorModel randNumber];
        [randNumbers addObject:randNumber];
        occurredNumbersArray[randNumber.intValue - 1] = YES;
    }
    
    // then
    for (NSNumber *randNumber in randNumbers) {
        XCTAssertNotNil(randNumber, @"RandNumber is nil.");
        XCTAssertTrue(randNumber.intValue > 0, @"RandNuber is not greater than 0.");
        XCTAssertTrue(randNumber.intValue < 50, @"RandNumber is not lower than 50.");
    }
    
    for (int i = 0; i < 49; ++i) {
        XCTAssertTrue(occurredNumbersArray[i], @"The number (%d) has never occured.", i);
    }
}

#pragma mark - Getters (Lazy initialization)
- (OCLottoSimulatorModel *)lottoSimulatorModel
{
    if (_lottoSimulatorModel == nil) {
        self.lottoSimulatorModel = [OCLottoSimulatorModel new];
    }
    return _lottoSimulatorModel;
}

@end
