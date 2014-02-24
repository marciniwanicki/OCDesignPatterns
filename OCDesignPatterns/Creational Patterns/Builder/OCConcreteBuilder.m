//
//  OCConcreteBuilder.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcreteBuilder.h"

@implementation OCConcreteBuilder

- (instancetype)initWithPropertyA:(NSInteger)propertyA
{
    self = [super init];
    if (self) {
        self.propertyA = propertyA;
    }
    return self;
}

- (instancetype)withPropertyB:(NSInteger)propertyB
{
    self.propertyB = propertyB;
    return self;
}

- (instancetype)withPropertyC:(NSInteger)propertyC
{
    self.propertyC = propertyC;
    return self;
}

- (OCConcreteProduct *)build
{
    OCConcreteProduct *product = [[OCConcreteProduct alloc] initWithBuilder:self];
    return product;
}

@end
