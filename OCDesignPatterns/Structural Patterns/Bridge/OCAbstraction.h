//
//  OCAbstraction.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCImplementor.h"

@interface OCAbstraction : NSObject

@property (nonatomic, assign) id<OCImplementor> implementor;

- (void)doSomething:(NSString *)command;

- (void)performFirstAction;

- (void)performSecomdAction;

@end
