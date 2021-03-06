//
//  OCLazyInitialization.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCElement.h"

@interface OCLazyInitialization : NSObject

@property (readonly) OCElement *element;

@end
