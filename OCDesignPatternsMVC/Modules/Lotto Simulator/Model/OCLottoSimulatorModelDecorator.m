//
//  OCLottoSimulatorModelDecorator.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCLottoSimulatorModelDecorator.h"

NSString *const kLottoSimulatorModelNumbersHaveBeenChangedNotificationName = @"LottoSimulatorModelNumbersHaveBeenChangedNotification";

@interface OCLottoSimulatorModelDecorator ()

@property (nonatomic, retain) id<OCLottoSimulatorModelProtocol> lottoSimulatorModel;

@end

@implementation OCLottoSimulatorModelDecorator

- (instancetype)initWithLottoSimulatorModel:(id<OCLottoSimulatorModelProtocol>)lottoSimulatorModel
{
    self = [super init];
    if (self) {
        self.lottoSimulatorModel = lottoSimulatorModel;
    }
    return self;
}

- (void)randNumbers
{
    [self.lottoSimulatorModel randNumbers];
    [self notifyNumbersHaveBeenChanged];
}

- (void)sortNumbers
{
    [self.lottoSimulatorModel sortNumbers];
    [self notifyNumbersHaveBeenChanged];
}

- (NSString *)numbersAsString
{
    return [self.lottoSimulatorModel numbersAsString];
}

- (void)notifyNumbersHaveBeenChanged
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kLottoSimulatorModelNumbersHaveBeenChangedNotificationName
                                                        object:self];
}

@end
