// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGProperty.m instead.

#import "_AGProperty.h"

const struct AGPropertyAttributes AGPropertyAttributes = {
	.negation = @"negation",
};

const struct AGPropertyRelationships AGPropertyRelationships = {
	.subjectEntity = @"subjectEntity",
};

const struct AGPropertyFetchedProperties AGPropertyFetchedProperties = {
};

@implementation AGPropertyID
@end

@implementation _AGProperty

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGProperty" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGProperty";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGProperty" inManagedObjectContext:moc_];
}

- (AGPropertyID*)objectID {
	return (AGPropertyID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"negationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"negation"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic negation;



- (BOOL)negationValue {
	NSNumber *result = [self negation];
	return [result boolValue];
}

- (void)setNegationValue:(BOOL)value_ {
	[self setNegation:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveNegationValue {
	NSNumber *result = [self primitiveNegation];
	return [result boolValue];
}

- (void)setPrimitiveNegationValue:(BOOL)value_ {
	[self setPrimitiveNegation:[NSNumber numberWithBool:value_]];
}





@dynamic subjectEntity;

	





@end
