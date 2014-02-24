//
//  OCDecorator.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/19/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCComponent.h"

@interface OCDecorator : NSObject<OCComponent>

- (instancetype)initWithDecoratedComponent:(id<OCComponent>)decoratedComponent;

@end
