// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGSourceItem.h instead.

#import <CoreData/CoreData.h>
#import "AGTaggedObject.h"

extern const struct AGSourceItemAttributes {
	__unsafe_unretained NSString *imagePath;
	__unsafe_unretained NSString *key;
	__unsafe_unretained NSString *name;
} AGSourceItemAttributes;

extern const struct AGSourceItemRelationships {
	__unsafe_unretained NSString *frameGroups;
	__unsafe_unretained NSString *source;
} AGSourceItemRelationships;

extern const struct AGSourceItemFetchedProperties {
} AGSourceItemFetchedProperties;

@class AGFrameGroup;
@class AGSource;





@interface AGSourceItemID : NSManagedObjectID {}
@end

@interface _AGSourceItem : AGTaggedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGSourceItemID*)objectID;




@property (nonatomic, strong) NSString *imagePath;


//- (BOOL)validateImagePath:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *key;


//- (BOOL)validateKey:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* frameGroups;

- (NSMutableSet*)frameGroupsSet;




@property (nonatomic, strong) AGSource* source;

//- (BOOL)validateSource:(id*)value_ error:(NSError**)error_;




@end

@interface _AGSourceItem (CoreDataGeneratedAccessors)

- (void)addFrameGroups:(NSSet*)value_;
- (void)removeFrameGroups:(NSSet*)value_;
- (void)addFrameGroupsObject:(AGFrameGroup*)value_;
- (void)removeFrameGroupsObject:(AGFrameGroup*)value_;

@end

@interface _AGSourceItem (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveImagePath;
- (void)setPrimitiveImagePath:(NSString*)value;




- (NSString*)primitiveKey;
- (void)setPrimitiveKey:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveFrameGroups;
- (void)setPrimitiveFrameGroups:(NSMutableSet*)value;



- (AGSource*)primitiveSource;
- (void)setPrimitiveSource:(AGSource*)value;


@end
