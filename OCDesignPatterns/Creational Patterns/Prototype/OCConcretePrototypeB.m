//
//  OCConcretePrototypeB.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcretePrototypeB.h"

@implementation OCConcretePrototypeB

#pragma mark - NSCopying method
- (id)copyWithZone:(NSZone *)zone
{
    OCConcretePrototypeB *prototype = [[OCConcretePrototypeB allocWithZone:zone] init];
    prototype.propertyB = self.propertyB;
    return prototype;
}

@end
