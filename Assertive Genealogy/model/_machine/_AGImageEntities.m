// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGImageEntities.m instead.

#import "_AGImageEntities.h"

const struct AGImageEntitiesAttributes AGImageEntitiesAttributes = {
	.type = @"type",
};

const struct AGImageEntitiesRelationships AGImageEntitiesRelationships = {
	.frame = @"frame",
	.target = @"target",
};

const struct AGImageEntitiesFetchedProperties AGImageEntitiesFetchedProperties = {
};

@implementation AGImageEntitiesID
@end

@implementation _AGImageEntities

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGImageEntities" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGImageEntities";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGImageEntities" inManagedObjectContext:moc_];
}

- (AGImageEntitiesID*)objectID {
	return (AGImageEntitiesID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic type;






@dynamic frame;

	

@dynamic target;

	





@end
