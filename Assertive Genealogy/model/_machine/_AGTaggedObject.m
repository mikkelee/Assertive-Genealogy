// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGTaggedObject.m instead.

#import "_AGTaggedObject.h"

const struct AGTaggedObjectAttributes AGTaggedObjectAttributes = {
};

const struct AGTaggedObjectRelationships AGTaggedObjectRelationships = {
	.tags = @"tags",
};

const struct AGTaggedObjectFetchedProperties AGTaggedObjectFetchedProperties = {
};

@implementation AGTaggedObjectID
@end

@implementation _AGTaggedObject

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGTaggedObject" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGTaggedObject";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGTaggedObject" inManagedObjectContext:moc_];
}

- (AGTaggedObjectID*)objectID {
	return (AGTaggedObjectID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic tags;

	
- (NSMutableSet*)tagsSet {
	[self willAccessValueForKey:@"tags"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tags"];
  
	[self didAccessValueForKey:@"tags"];
	return result;
}
	





@end
