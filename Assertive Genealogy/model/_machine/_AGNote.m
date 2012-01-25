// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGNote.m instead.

#import "_AGNote.h"

const struct AGNoteAttributes AGNoteAttributes = {
	.author = @"author",
	.note = @"note",
};

const struct AGNoteRelationships AGNoteRelationships = {
	.object = @"object",
};

const struct AGNoteFetchedProperties AGNoteFetchedProperties = {
};

@implementation AGNoteID
@end

@implementation _AGNote

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AGNote" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AGNote";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AGNote" inManagedObjectContext:moc_];
}

- (AGNoteID*)objectID {
	return (AGNoteID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic author;






@dynamic note;






@dynamic object;

	





@end
