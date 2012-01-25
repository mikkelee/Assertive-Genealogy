// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGSource.m instead.

#import "_AGSource.h"

const struct AGSourceAttributes AGSourceAttributes = {
	.name = @"name",
	.pluginName = @"pluginName",
};

const struct AGSourceRelationships AGSourceRelationships = {
	.items = @"items",
};

const struct AGSourceFetchedProperties AGSourceFetchedProperties = {
};

@implementation AGSourceID
@end

@implementation _AGSource

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGSource" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGSource";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGSource" inManagedObjectContext:moc_];
}

- (AGSourceID*)objectID {
	return (AGSourceID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;






@dynamic pluginName;






@dynamic items;

	
- (NSMutableOrderedSet*)itemsSet {
	[self willAccessValueForKey:@"items"];
  
	NSMutableOrderedSet *result = (NSMutableOrderedSet*)[self mutableOrderedSetValueForKey:@"items"];
  
	[self didAccessValueForKey:@"items"];
	return result;
}
	





@end
