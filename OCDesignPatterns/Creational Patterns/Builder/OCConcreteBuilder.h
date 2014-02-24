//
//  OCConcreteBuilder.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCConcreteProduct.h"

@interface OCConcreteBuilder : NSObject

@property (nonatomic, assign) NSInteger propertyA;
@property (nonatomic, assign) NSInteger propertyB;
@property (nonatomic, assign) NSInteger propertyC;

- (instancetype)initWithPropertyA:(NSInteger)propertyA;

- (instancetype)withPropertyB:(NSInteger)propertyB;

- (instancetype)withPropertyC:(NSInteger)propertyC;

- (OCConcreteProduct *)build;

@end
