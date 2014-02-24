//
//  OCComposite.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCComposite.h"

@interface OCComposite ()

@property (nonatomic, strong) NSMutableArray *childs;

@end

@implementation OCComposite

- (void)doSomething
{
    // Do something
}

- (BOOL)addChild:(id<OCComponent>)childComponent
{
    if ([self.childs containsObject:childComponent]) {
        return NO;
    }
    
    [self.childs addObject:childComponent];
    return YES;
}

- (BOOL)removeChild:(id<OCComponent>)childComponent
{
    if ([self.childs containsObject:childComponent]) {
        [self.childs removeObject:childComponent];
        return YES;
    }
    
    return NO;
}

- (NSUInteger)amountOfChilds
{
    return self.childs.count;
}

- (id<OCComponent>)childAtIndex:(NSUInteger)index
{
    return [self.childs objectAtIndex:index];
}

- (NSMutableArray *)childs
{
    if (_childs == nil) {
        self.childs = [NSMutableArray new];
    }
    return _childs;
}

- (BOOL)isComposite
{
    return YES;
}

@end
