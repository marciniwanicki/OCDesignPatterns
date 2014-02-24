//
//  OCFactory.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCFactory.h"

@implementation OCFactory

+ (id<OCProduct>)createProduct:(ProductType)productType
{
    switch (productType) {
            case ProductTypeA:
            return [self createProductA];
            case ProductTypeB:
            return [self createProductB];
    }
}

+ (OCProductA *)createProductA
{
    return [OCProductA new];
}

+ (OCProductB *)createProductB
{
    return [OCProductB new];
}

@end
