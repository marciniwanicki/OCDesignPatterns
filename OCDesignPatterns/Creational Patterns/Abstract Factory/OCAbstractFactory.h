//
//  OCAbstractFactory.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCAbstractProductA.h"
#import "OCAbstractProductB.h"

@protocol OCAbstractFactory <NSObject>

@required
- (id<OCAbstractProductA>)createProductA;

- (id<OCAbstractProductB>)createProductB;

@end
