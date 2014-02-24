//
//  OCLottoSimulatorModelDecorator.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCLottoSimulatorModel.h"

extern NSString *const kLottoSimulatorModelNumbersHaveBeenChangedNotificationName;

@interface OCLottoSimulatorModelDecorator : NSObject<OCLottoSimulatorModelProtocol>

- (instancetype)initWithLottoSimulatorModel:(id<OCLottoSimulatorModelProtocol>)lottoSimulatorModel;

@end
