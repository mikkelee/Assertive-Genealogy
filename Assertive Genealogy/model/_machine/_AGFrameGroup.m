// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGFrameGroup.m instead.

#import "_AGFrameGroup.h"

const struct AGFrameGroupAttributes AGFrameGroupAttributes = {
};

const struct AGFrameGroupRelationships AGFrameGroupRelationships = {
	.assertions = @"assertions",
	.frames = @"frames",
	.sourceItem = @"sourceItem",
};

const struct AGFrameGroupFetchedProperties AGFrameGroupFetchedProperties = {
};

@implementation AGFrameGroupID
@end

@implementation _AGFrameGroup

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGFrameGroup" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGFrameGroup";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGFrameGroup" inManagedObjectContext:moc_];
}

- (AGFrameGroupID*)objectID {
	return (AGFrameGroupID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic assertions;

	
- (NSMutableSet*)assertionsSet {
	[self willAccessValueForKey:@"assertions"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"assertions"];
  
	[self didAccessValueForKey:@"assertions"];
	return result;
}
	

@dynamic frames;

	
- (NSMutableSet*)framesSet {
	[self willAccessValueForKey:@"frames"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"frames"];
  
	[self didAccessValueForKey:@"frames"];
	return result;
}
	

@dynamic sourceItem;

	





@end
