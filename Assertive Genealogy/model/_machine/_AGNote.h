// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGNote.h instead.

#import <CoreData/CoreData.h>
#import "AGObject.h"

extern const struct AGNoteAttributes {
	__unsafe_unretained NSString *author;
	__unsafe_unretained NSString *note;
} AGNoteAttributes;

extern const struct AGNoteRelationships {
	__unsafe_unretained NSString *object;
} AGNoteRelationships;

extern const struct AGNoteFetchedProperties {
} AGNoteFetchedProperties;

@class AGObject;




@interface AGNoteID : NSManagedObjectID {}
@end

@interface _AGNote : AGObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGNoteID*)objectID;




@property (nonatomic, strong) NSString *author;


//- (BOOL)validateAuthor:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *note;


//- (BOOL)validateNote:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) AGObject* object;

//- (BOOL)validateObject:(id*)value_ error:(NSError**)error_;




@end

@interface _AGNote (CoreDataGeneratedAccessors)

@end

@interface _AGNote (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAuthor;
- (void)setPrimitiveAuthor:(NSString*)value;




- (NSString*)primitiveNote;
- (void)setPrimitiveNote:(NSString*)value;





- (AGObject*)primitiveObject;
- (void)setPrimitiveObject:(AGObject*)value;


@end
