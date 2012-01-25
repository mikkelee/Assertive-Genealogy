// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGTag.m instead.

#import "_AGTag.h"

const struct AGTagAttributes AGTagAttributes = {
	.tagKey = @"tagKey",
	.tagValue = @"tagValue",
};

const struct AGTagRelationships AGTagRelationships = {
	.object = @"object",
};

const struct AGTagFetchedProperties AGTagFetchedProperties = {
};

@implementation AGTagID
@end

@implementation _AGTag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGTag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGTag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGTag" inManagedObjectContext:moc_];
}

- (AGTagID*)objectID {
	return (AGTagID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic tagKey;






@dynamic tagValue;






@dynamic object;

	





@end
