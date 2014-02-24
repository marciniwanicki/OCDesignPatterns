//
//  OCConcreteProductB+BuilderAdditions.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCConcreteProductB.h"

@interface OCConcreteProductB (BuilderAdditions)

- (instancetype)initWithPropertyA:(NSInteger)propertyA;

- (instancetype)withPropertyB:(NSInteger)propertyB;

- (instancetype)withPropertyC:(NSInteger)propertyC;

@end
