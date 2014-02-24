//
//  OCRefinedAbstraction.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCRefinedAbstraction.h"

@implementation OCRefinedAbstraction

- (void)performFirstAction
{
    [self doSomething:@"Command 2"];
}

- (void)performSecomdAction
{
    [self doSomething:@"Command 2"];
}

@end
