//
//  OCComponent.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OCComponent <NSObject>

@required
- (void)doSomething;

- (BOOL)addChild:(id<OCComponent>)childComponent;

- (BOOL)removeChild:(id<OCComponent>)childComponent;

- (NSUInteger)amountOfChilds;

- (id<OCComponent>)childAtIndex:(NSUInteger)index;

- (BOOL)isComposite;

@end
