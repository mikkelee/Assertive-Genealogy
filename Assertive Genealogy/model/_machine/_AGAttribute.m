// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGAttribute.m instead.

#import "_AGAttribute.h"

const struct AGAttributeAttributes AGAttributeAttributes = {
	.key = @"key",
	.value = @"value",
};

const struct AGAttributeRelationships AGAttributeRelationships = {
};

const struct AGAttributeFetchedProperties AGAttributeFetchedProperties = {
};

@implementation AGAttributeID
@end

@implementation _AGAttribute

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGAttribute" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGAttribute";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGAttribute" inManagedObjectContext:moc_];
}

- (AGAttributeID*)objectID {
	return (AGAttributeID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic key;






@dynamic value;










@end
