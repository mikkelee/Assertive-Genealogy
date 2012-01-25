// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGObject.m instead.

#import "_AGObject.h"

const struct AGObjectAttributes AGObjectAttributes = {
	.dateCreated = @"dateCreated",
	.lastModified = @"lastModified",
};

const struct AGObjectRelationships AGObjectRelationships = {
	.notes = @"notes",
};

const struct AGObjectFetchedProperties AGObjectFetchedProperties = {
};

@implementation AGObjectID
@end

@implementation _AGObject

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGObject" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGObject";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGObject" inManagedObjectContext:moc_];
}

- (AGObjectID*)objectID {
	return (AGObjectID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic dateCreated;






@dynamic lastModified;






@dynamic notes;

	
- (NSMutableSet*)notesSet {
	[self willAccessValueForKey:@"notes"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"notes"];
  
	[self didAccessValueForKey:@"notes"];
	return result;
}
	





@end
