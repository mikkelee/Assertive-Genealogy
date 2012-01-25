// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGSupposition.m instead.

#import "_AGSupposition.h"

const struct AGSuppositionAttributes AGSuppositionAttributes = {
	.creator = @"creator",
	.grade = @"grade",
	.negation = @"negation",
};

const struct AGSuppositionRelationships AGSuppositionRelationships = {
	.entities = @"entities",
};

const struct AGSuppositionFetchedProperties AGSuppositionFetchedProperties = {
};

@implementation AGSuppositionID
@end

@implementation _AGSupposition

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGSupposition" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGSupposition";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGSupposition" inManagedObjectContext:moc_];
}

- (AGSuppositionID*)objectID {
	return (AGSuppositionID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"gradeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"grade"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"negationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"negation"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic creator;






@dynamic grade;



- (short)gradeValue {
	NSNumber *result = [self grade];
	return [result shortValue];
}

- (void)setGradeValue:(short)value_ {
	[self setGrade:[NSNumber numberWithShort:value_]];
}

- (short)primitiveGradeValue {
	NSNumber *result = [self primitiveGrade];
	return [result shortValue];
}

- (void)setPrimitiveGradeValue:(short)value_ {
	[self setPrimitiveGrade:[NSNumber numberWithShort:value_]];
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





@dynamic entities;

	
- (NSMutableSet*)entitiesSet {
	[self willAccessValueForKey:@"entities"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"entities"];
  
	[self didAccessValueForKey:@"entities"];
	return result;
}
	





@end
