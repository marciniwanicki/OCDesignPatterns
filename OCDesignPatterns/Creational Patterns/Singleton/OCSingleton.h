//
//  OCSingleton.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/17/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OCSingleton : NSObject

+ (instancetype)sharedInstance;

@end
