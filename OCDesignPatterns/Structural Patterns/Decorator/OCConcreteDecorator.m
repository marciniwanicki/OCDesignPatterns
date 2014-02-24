//
//  OCConcreteDecorator.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcreteDecorator.h"

@implementation OCConcreteDecorator

- (void)doSomething
{
    [super doSomething];
    [self doSomethingElse];
}

- (void)doSomethingElse
{
    // Do something else
}

@end
