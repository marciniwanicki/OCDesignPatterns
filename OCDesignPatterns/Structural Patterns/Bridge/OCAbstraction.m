//
//  OCAbstraction.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCAbstraction.h"

@implementation OCAbstraction

- (void)doSomething:(NSString *)command
{
    [self.implementor doSomething:command];
}

- (void)performFirstAction
{
    // Override me
}

- (void)performSecomdAction
{
    // Override me
}

@end
