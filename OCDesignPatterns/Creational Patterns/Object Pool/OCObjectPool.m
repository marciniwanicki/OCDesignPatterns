//
//  OCObjectPool.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCObjectPool.h"

@interface OCObjectPool ()

@property (nonatomic, strong) NSMutableArray *poolArray;

@end

@implementation OCObjectPool

const static NSInteger kDefaultPoolSize = 10;
BOOL _acquiredArray[kDefaultPoolSize];

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

#pragma mark - Public methods
+ (instancetype)sharedInstance
{
    static dispatch_once_t dispatchOnce;
    static OCObjectPool *sharedInstance;
    
    dispatch_once(&dispatchOnce, ^{
        sharedInstance = [[OCObjectPool alloc] initSharedInstance];
    });
    
    return sharedInstance;
}

- (OCReusableObject *)acquireReusableObject
{
    NSInteger acquirtedCount = [self acquiredCount];
    if (acquirtedCount == kDefaultPoolSize) {
        return nil;
    }
    
    for (int i = 0; i < kDefaultPoolSize; ++i) {
        if (_acquiredArray[i]) {
            continue;
        }
        
        OCReusableObject *reusableObject = [self.poolArray objectAtIndex:i];
        if (reusableObject) {
            return reusableObject;
        }
        
        OCReusableObject *newReusableObject = [OCReusableObject new];
        [self.poolArray setObject:newReusableObject atIndexedSubscript:i];
        return newReusableObject;
    }
    
    return nil; // should never happen
}

- (BOOL)releaseReusableObject:(OCReusableObject *)reusableObject
{
    NSInteger index = [self.poolArray indexOfObject:reusableObject];
    if (_acquiredArray[index]) {
        _acquiredArray[index] = NO;
        return YES;
    }
    return NO;
}

#pragma mark - Private methods
- (instancetype)initSharedInstance
{
    self = [super init];
    if (self) {
        self.poolArray = [[NSMutableArray alloc] initWithCapacity:kDefaultPoolSize];
        for (int i = 0; i < kDefaultPoolSize; ++i) {
            _acquiredArray[i] = NO;
        }
    }
    return self;
}

- (NSInteger)acquiredCount
{
    NSInteger count = 0;
    for (int i = 0; i < kDefaultPoolSize; ++i) {
        if (_acquiredArray[i]) {
            ++count;
        }
    }
    return count;
}

@end
