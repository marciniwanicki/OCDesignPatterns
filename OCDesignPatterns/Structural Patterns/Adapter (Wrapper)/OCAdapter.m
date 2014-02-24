//
//  OCAdapter.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCAdapter.h"
#import "OCAdaptee.h"

@interface OCAdapter ()

@property (nonatomic, strong) OCAdaptee *adaptee;

@end

@implementation OCAdapter

- (void)methodA
{
    [self.adaptee methodB];
}

- (OCAdaptee *)adaptee
{
    if (_adaptee == nil) {
        self.adaptee = [OCAdaptee new];
    }
    return _adaptee;
}

@end
