// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGFrame.m instead.

#import "_AGFrame.h"

const struct AGFrameAttributes AGFrameAttributes = {
	.rectString = @"rectString",
	.transcriptionText = @"transcriptionText",
};

const struct AGFrameRelationships AGFrameRelationships = {
	.assertions = @"assertions",
	.frameGroup = @"frameGroup",
	.imageEntities = @"imageEntities",
	.sourceItem = @"sourceItem",
};

const struct AGFrameFetchedProperties AGFrameFetchedProperties = {
};

@implementation AGFrameID
@end

@implementation _AGFrame

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGFrame" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGFrame";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGFrame" inManagedObjectContext:moc_];
}

- (AGFrameID*)objectID {
	return (AGFrameID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic rectString;






@dynamic transcriptionText;






@dynamic assertions;

	
- (NSMutableSet*)assertionsSet {
	[self willAccessValueForKey:@"assertions"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"assertions"];
  
	[self didAccessValueForKey:@"assertions"];
	return result;
}
	

@dynamic frameGroup;

	

@dynamic imageEntities;

	
- (NSMutableSet*)imageEntitiesSet {
	[self willAccessValueForKey:@"imageEntities"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"imageEntities"];
  
	[self didAccessValueForKey:@"imageEntities"];
	return result;
}
	

@dynamic sourceItem;

	





@end
