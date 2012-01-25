// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGRelationship.m instead.

#import "_AGRelationship.h"

const struct AGRelationshipAttributes AGRelationshipAttributes = {
};

const struct AGRelationshipRelationships AGRelationshipRelationships = {
	.target = @"target",
};

const struct AGRelationshipFetchedProperties AGRelationshipFetchedProperties = {
};

@implementation AGRelationshipID
@end

@implementation _AGRelationship

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGRelationship" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGRelationship";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGRelationship" inManagedObjectContext:moc_];
}

- (AGRelationshipID*)objectID {
	return (AGRelationshipID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic target;

	





@end
