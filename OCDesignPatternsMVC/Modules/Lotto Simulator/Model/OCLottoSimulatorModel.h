//
//  OCLottoSimulatorModel.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCLottoSimulatorModelProtocol.h"

@interface OCLottoSimulatorModel : NSObject<OCLottoSimulatorModelProtocol>

- (NSNumber *)randNumber;

@end
