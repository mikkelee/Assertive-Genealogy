// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGFrame.h instead.

#import <CoreData/CoreData.h>
#import "AGWindowObject.h"

extern const struct AGFrameAttributes {
	__unsafe_unretained NSString *rectString;
	__unsafe_unretained NSString *transcriptionText;
} AGFrameAttributes;

extern const struct AGFrameRelationships {
	__unsafe_unretained NSString *assertions;
	__unsafe_unretained NSString *frameGroup;
	__unsafe_unretained NSString *imageEntities;
	__unsafe_unretained NSString *sourceItem;
} AGFrameRelationships;

extern const struct AGFrameFetchedProperties {
} AGFrameFetchedProperties;

@class AGAssertion;
@class NSManagedObject;
@class AGImageEntities;
@class AGSourceItem;




@interface AGFrameID : NSManagedObjectID {}
@end

@interface _AGFrame : AGWindowObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGFrameID*)objectID;




@property (nonatomic, strong) NSString *rectString;


//- (BOOL)validateRectString:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *transcriptionText;


//- (BOOL)validateTranscriptionText:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* assertions;

- (NSMutableSet*)assertionsSet;




@property (nonatomic, strong) NSManagedObject* frameGroup;

//- (BOOL)validateFrameGroup:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet* imageEntities;

- (NSMutableSet*)imageEntitiesSet;




@property (nonatomic, strong) AGSourceItem* sourceItem;

//- (BOOL)validateSourceItem:(id*)value_ error:(NSError**)error_;




@end

@interface _AGFrame (CoreDataGeneratedAccessors)

- (void)addAssertions:(NSSet*)value_;
- (void)removeAssertions:(NSSet*)value_;
- (void)addAssertionsObject:(AGAssertion*)value_;
- (void)removeAssertionsObject:(AGAssertion*)value_;

- (void)addImageEntities:(NSSet*)value_;
- (void)removeImageEntities:(NSSet*)value_;
- (void)addImageEntitiesObject:(AGImageEntities*)value_;
- (void)removeImageEntitiesObject:(AGImageEntities*)value_;

@end

@interface _AGFrame (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveRectString;
- (void)setPrimitiveRectString:(NSString*)value;




- (NSString*)primitiveTranscriptionText;
- (void)setPrimitiveTranscriptionText:(NSString*)value;





- (NSMutableSet*)primitiveAssertions;
- (void)setPrimitiveAssertions:(NSMutableSet*)value;



- (NSManagedObject*)primitiveFrameGroup;
- (void)setPrimitiveFrameGroup:(NSManagedObject*)value;



- (NSMutableSet*)primitiveImageEntities;
- (void)setPrimitiveImageEntities:(NSMutableSet*)value;



- (AGSourceItem*)primitiveSourceItem;
- (void)setPrimitiveSourceItem:(AGSourceItem*)value;


@end
