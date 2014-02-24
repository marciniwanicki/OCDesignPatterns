//
//  OCFactory.h
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/18/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCProduct.h"
#import "OCProductA.h"
#import "OCProductB.h"

typedef NS_ENUM(NSInteger, ProductType) {
    ProductTypeA,
    ProductTypeB
};

@interface OCFactory : NSObject

+ (id<OCProduct>)createProduct:(ProductType)productType;

+ (OCProductA *)createProductA;

+ (OCProductB *)createProductB;

@end
