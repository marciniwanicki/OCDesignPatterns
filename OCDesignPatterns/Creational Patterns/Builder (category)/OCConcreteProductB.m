//
//  OCConcreteProductB.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcreteProductB.h"

@implementation OCConcreteProductB

- (instancetype)init
{
    [NSException raise:[self.class description]
                format:@"Cannot create an instance of OCConcreteProductB by init method, try to use BuilderAdditions category instead."];
    return nil;
}


@end
