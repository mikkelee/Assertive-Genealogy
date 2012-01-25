// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGAssertion.m instead.

#import "_AGAssertion.h"

const struct AGAssertionAttributes AGAssertionAttributes = {
};

const struct AGAssertionRelationships AGAssertionRelationships = {
	.frameGroup = @"frameGroup",
};

const struct AGAssertionFetchedProperties AGAssertionFetchedProperties = {
};

@implementation AGAssertionID
@end

@implementation _AGAssertion

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGAssertion" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGAssertion";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGAssertion" inManagedObjectContext:moc_];
}

- (AGAssertionID*)objectID {
	return (AGAssertionID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic frameGroup;

	





@end
