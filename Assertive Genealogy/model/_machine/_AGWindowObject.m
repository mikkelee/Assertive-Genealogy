// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGWindowObject.m instead.

#import "_AGWindowObject.h"

const struct AGWindowObjectAttributes AGWindowObjectAttributes = {
};

const struct AGWindowObjectRelationships AGWindowObjectRelationships = {
};

const struct AGWindowObjectFetchedProperties AGWindowObjectFetchedProperties = {
};

@implementation AGWindowObjectID
@end

@implementation _AGWindowObject

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGWindowObject" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGWindowObject";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGWindowObject" inManagedObjectContext:moc_];
}

- (AGWindowObjectID*)objectID {
	return (AGWindowObjectID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}








@end
