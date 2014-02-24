//
//  OCSingleton.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCSingleton.h"

@implementation OCSingleton

#pragma mark - Init methods
- (id)init
{
    [NSException raise:[self.class description]
                format:@"Cannot create an instance of singleton using init method, sharedInstance method needs to be used."];
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    [NSException raise:[self.class description]
                format:@"Cannot copy singleton using copyWithZone method, sharedInstance method needs to be used."];
    return nil;
}

#pragma mark - Get singleton
+ (instancetype)sharedInstance
{
    static dispatch_once_t dispatchOnce;
    static OCSingleton *sharedInstance;
    
    dispatch_once(&dispatchOnce, ^{
        sharedInstance = [[OCSingleton alloc] initSharedInstance];
    });
    
    return sharedInstance;
}

#pragma mark - Private methods
- (instancetype)initSharedInstance
{
    self = [super init];
    if (self) {
        // Do nothing
    }
    return self;
}

@end
