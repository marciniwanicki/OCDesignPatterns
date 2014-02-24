//
//  OCConcretePrototypeA.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcretePrototypeA.h"

@implementation OCConcretePrototypeA

#pragma mark - NSCopying method
- (id)copyWithZone:(NSZone *)zone
{
    OCConcretePrototypeA *prototype = [[OCConcretePrototypeA allocWithZone:zone] init];
    prototype.propertyA = self.propertyA;
    return prototype;
}

@end
