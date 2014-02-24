//
//  OCDecorator.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCDecorator.h"

@interface OCDecorator ()

@property (nonatomic, assign) id<OCComponent> decoratedCompoment;

@end

@implementation OCDecorator

- (instancetype)initWithDecoratedComponent:(id<OCComponent>)decoratedComponent
{
    self = [super init];
    if (self) {
        self.decoratedCompoment = decoratedComponent;
    }
    return self;
}

- (void)doSomething
{
    [self.decoratedCompoment doSomething];
}

@end
