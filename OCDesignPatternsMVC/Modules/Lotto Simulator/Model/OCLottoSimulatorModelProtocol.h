//
//  OCLottoSimulatorModelProtocol.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OCLottoSimulatorModelProtocol <NSObject>

- (void)randNumbers;

- (void)sortNumbers;

- (NSString *)numbersAsString;

@end
