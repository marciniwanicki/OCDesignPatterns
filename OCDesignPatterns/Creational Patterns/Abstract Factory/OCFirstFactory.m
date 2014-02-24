//
//  OCFirstFactory.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCFirstFactory.h"
#import "OCFirstProductA.h"
#import "OCFirstProductB.h"

@implementation OCFirstFactory

- (id<OCAbstractProductA>)createProductA
{
    return [OCFirstProductA new];
}

- (id<OCAbstractProductB>)createProductB
{
    return [OCFirstProductB new];
}

@end
