// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGTaggedObject.h instead.

#import <CoreData/CoreData.h>
#import "AGWindowObject.h"

extern const struct AGTaggedObjectAttributes {
} AGTaggedObjectAttributes;

extern const struct AGTaggedObjectRelationships {
	__unsafe_unretained NSString *tags;
} AGTaggedObjectRelationships;

extern const struct AGTaggedObjectFetchedProperties {
} AGTaggedObjectFetchedProperties;

@class AGTag;


@interface AGTaggedObjectID : NSManagedObjectID {}
@end

@interface _AGTaggedObject : AGWindowObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGTaggedObjectID*)objectID;





@property (nonatomic, strong) NSSet* tags;

- (NSMutableSet*)tagsSet;




@end

@interface _AGTaggedObject (CoreDataGeneratedAccessors)

- (void)addTags:(NSSet*)value_;
- (void)removeTags:(NSSet*)value_;
- (void)addTagsObject:(AGTag*)value_;
- (void)removeTagsObject:(AGTag*)value_;

@end

@interface _AGTaggedObject (CoreDataGeneratedPrimitiveAccessors)



- (NSMutableSet*)primitiveTags;
- (void)setPrimitiveTags:(NSMutableSet*)value;


@end
