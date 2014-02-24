//
//  OCConcreteProduct.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcreteProduct.h"
#import "OCConcreteBuilder.h"

@implementation OCConcreteProduct

- (instancetype)init
{
    [NSException raise:[self.class description]
                format:@"Cannot create an instance of OCConcreteProduct by init method, try to use OCConcreteBuilder instead."];
    return nil;
}

- (instancetype)initWithBuilder:(OCConcreteBuilder *)builder
{
    self = [super init];
    if (self) {
        _propertyA = builder.propertyA;
        _propertyB = builder.propertyB;
        _propertyC = builder.propertyC;
    }
    return self;
}

@end
