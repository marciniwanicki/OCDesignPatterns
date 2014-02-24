//
//  OCObjectPool.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCReusableObject.h"

@interface OCObjectPool : NSObject

+ (instancetype)sharedInstance;

- (OCReusableObject *)acquireReusableObject;

- (BOOL)releaseReusableObject:(OCReusableObject *)reusableObject;

@end
