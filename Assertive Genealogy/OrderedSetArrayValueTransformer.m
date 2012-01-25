//
//  OrderedSetArrayValueTransformer.m
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 17/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "OrderedSetArrayValueTransformer.h"

@implementation OrderedSetArrayValueTransformer

+ (Class)transformedValueClass {
    return [NSArray class];
}

+ (BOOL)allowsReverseTransformation {
    return YES;
}

- (id)transformedValue:(id)value {
    return [(NSOrderedSet *)value array];
}

- (id)reverseTransformedValue:(id)value {
	return [NSOrderedSet orderedSetWithArray:value];
}

@end
