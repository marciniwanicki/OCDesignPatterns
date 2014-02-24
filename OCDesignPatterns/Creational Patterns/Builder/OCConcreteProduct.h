//
//  OCConcreteProduct.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OCConcreteBuilder;

@interface OCConcreteProduct : NSObject

@property (nonatomic, assign, readonly) NSInteger propertyA; // required
@property (nonatomic, assign, readonly) NSInteger propertyB; // optional
@property (nonatomic, assign, readonly) NSInteger propertyC; // optional

- (instancetype)initWithBuilder:(OCConcreteBuilder *)builder;

@end
