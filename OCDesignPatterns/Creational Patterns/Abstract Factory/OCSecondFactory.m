//
//  OCSecondFactory.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCSecondFactory.h"
#import "OCSecondProductA.h"
#import "OCSecondProductB.h"

@implementation OCSecondFactory

- (id<OCAbstractProductA>)createProductA
{
    return [OCSecondProductA new];
}

- (id<OCAbstractProductB>)createProductB
{
    return [OCSecondProductB new];
}

@end
