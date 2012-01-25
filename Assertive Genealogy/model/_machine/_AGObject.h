// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGObject.h instead.

#import <CoreData/CoreData.h>


extern const struct AGObjectAttributes {
	__unsafe_unretained NSString *dateCreated;
	__unsafe_unretained NSString *lastModified;
} AGObjectAttributes;

extern const struct AGObjectRelationships {
	__unsafe_unretained NSString *notes;
} AGObjectRelationships;

extern const struct AGObjectFetchedProperties {
} AGObjectFetchedProperties;

@class AGNote;




@interface AGObjectID : NSManagedObjectID {}
@end

@interface _AGObject : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGObjectID*)objectID;




@property (nonatomic, strong) NSDate *dateCreated;


//- (BOOL)validateDateCreated:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate *lastModified;


//- (BOOL)validateLastModified:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* notes;

- (NSMutableSet*)notesSet;




@end

@interface _AGObject (CoreDataGeneratedAccessors)

- (void)addNotes:(NSSet*)value_;
- (void)removeNotes:(NSSet*)value_;
- (void)addNotesObject:(AGNote*)value_;
- (void)removeNotesObject:(AGNote*)value_;

@end

@interface _AGObject (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDateCreated;
- (void)setPrimitiveDateCreated:(NSDate*)value;




- (NSDate*)primitiveLastModified;
- (void)setPrimitiveLastModified:(NSDate*)value;





- (NSMutableSet*)primitiveNotes;
- (void)setPrimitiveNotes:(NSMutableSet*)value;


@end
