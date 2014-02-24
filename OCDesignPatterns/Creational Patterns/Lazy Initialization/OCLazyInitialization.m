//
//  OCLazyInitialization.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCLazyInitialization.h"
#import "OCElement.h"

@implementation OCLazyInitialization

@synthesize element = _element;

- (OCElement *)element
{
    if (_element == nil) {
        _element = [OCElement new];
    }
    return _element;
}

@end
