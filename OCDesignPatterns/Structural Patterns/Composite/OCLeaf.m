//
//  OCLeaf.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCLeaf.h"

@implementation OCLeaf

- (void)doSomething
{
    // Do something
}

- (BOOL)addChild:(id<OCComponent>)childComponent
{
    return NO;
}

- (BOOL)removeChild:(id<OCComponent>)childComponent
{
    return NO;
}

- (NSUInteger)amountOfChilds
{
    return 0;
}

- (id<OCComponent>)childAtIndex:(NSUInteger)index
{
    return nil;
}

- (BOOL)isComposite
{
    return NO;
}

@end
