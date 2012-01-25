// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGEntity.m instead.

#import "_AGEntity.h"

const struct AGEntityAttributes AGEntityAttributes = {
};

const struct AGEntityRelationships AGEntityRelationships = {
	.inImages = @"inImages",
	.inRelationships = @"inRelationships",
	.properties = @"properties",
	.supposition = @"supposition",
};

const struct AGEntityFetchedProperties AGEntityFetchedProperties = {
};

@implementation AGEntityID
@end

@implementation _AGEntity

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGEntity" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGEntity";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGEntity" inManagedObjectContext:moc_];
}

- (AGEntityID*)objectID {
	return (AGEntityID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic inImages;

	

@dynamic inRelationships;

	
- (NSMutableSet*)inRelationshipsSet {
	[self willAccessValueForKey:@"inRelationships"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"inRelationships"];
  
	[self didAccessValueForKey:@"inRelationships"];
	return result;
}
	

@dynamic properties;

	
- (NSMutableSet*)propertiesSet {
	[self willAccessValueForKey:@"properties"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"properties"];
  
	[self didAccessValueForKey:@"properties"];
	return result;
}
	

@dynamic supposition;

	





@end
