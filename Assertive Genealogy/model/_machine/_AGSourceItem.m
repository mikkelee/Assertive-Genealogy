// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGSourceItem.m instead.

#import "_AGSourceItem.h"

const struct AGSourceItemAttributes AGSourceItemAttributes = {
	.imagePath = @"imagePath",
	.key = @"key",
	.name = @"name",
};

const struct AGSourceItemRelationships AGSourceItemRelationships = {
	.frameGroups = @"frameGroups",
	.source = @"source",
};

const struct AGSourceItemFetchedProperties AGSourceItemFetchedProperties = {
};

@implementation AGSourceItemID
@end

@implementation _AGSourceItem

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGSourceItem" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGSourceItem";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGSourceItem" inManagedObjectContext:moc_];
}

- (AGSourceItemID*)objectID {
	return (AGSourceItemID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic imagePath;






@dynamic key;






@dynamic name;






@dynamic frameGroups;

	
- (NSMutableSet*)frameGroupsSet {
	[self willAccessValueForKey:@"frameGroups"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"frameGroups"];
  
	[self didAccessValueForKey:@"frameGroups"];
	return result;
}
	

@dynamic source;

	





@end
