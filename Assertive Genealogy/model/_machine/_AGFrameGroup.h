// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGFrameGroup.h instead.

#import <CoreData/CoreData.h>
#import "AGWindowObject.h"

extern const struct AGFrameGroupAttributes {
} AGFrameGroupAttributes;

extern const struct AGFrameGroupRelationships {
	__unsafe_unretained NSString *assertions;
	__unsafe_unretained NSString *frames;
	__unsafe_unretained NSString *sourceItem;
} AGFrameGroupRelationships;

extern const struct AGFrameGroupFetchedProperties {
} AGFrameGroupFetchedProperties;

@class AGAssertion;
@class AGFrame;
@class AGSourceItem;


@interface AGFrameGroupID : NSManagedObjectID {}
@end

@interface _AGFrameGroup : AGWindowObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGFrameGroupID*)objectID;





@property (nonatomic, strong) NSSet* assertions;

- (NSMutableSet*)assertionsSet;




@property (nonatomic, strong) NSSet* frames;

- (NSMutableSet*)framesSet;




@property (nonatomic, strong) AGSourceItem* sourceItem;

//- (BOOL)validateSourceItem:(id*)value_ error:(NSError**)error_;




@end

@interface _AGFrameGroup (CoreDataGeneratedAccessors)

- (void)addAssertions:(NSSet*)value_;
- (void)removeAssertions:(NSSet*)value_;
- (void)addAssertionsObject:(AGAssertion*)value_;
- (void)removeAssertionsObject:(AGAssertion*)value_;

- (void)addFrames:(NSSet*)value_;
- (void)removeFrames:(NSSet*)value_;
- (void)addFramesObject:(AGFrame*)value_;
- (void)removeFramesObject:(AGFrame*)value_;

@end

@interface _AGFrameGroup (CoreDataGeneratedPrimitiveAccessors)



- (NSMutableSet*)primitiveAssertions;
- (void)setPrimitiveAssertions:(NSMutableSet*)value;



- (NSMutableSet*)primitiveFrames;
- (void)setPrimitiveFrames:(NSMutableSet*)value;



- (AGSourceItem*)primitiveSourceItem;
- (void)setPrimitiveSourceItem:(AGSourceItem*)value;


@end
