// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGRelationship.h instead.

#import <CoreData/CoreData.h>
#import "AGProperty.h"

extern const struct AGRelationshipAttributes {
} AGRelationshipAttributes;

extern const struct AGRelationshipRelationships {
	__unsafe_unretained NSString *target;
} AGRelationshipRelationships;

extern const struct AGRelationshipFetchedProperties {
} AGRelationshipFetchedProperties;

@class AGEntity;


@interface AGRelationshipID : NSManagedObjectID {}
@end

@interface _AGRelationship : AGProperty {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGRelationshipID*)objectID;





@property (nonatomic, strong) AGEntity* target;

//- (BOOL)validateTarget:(id*)value_ error:(NSError**)error_;




@end

@interface _AGRelationship (CoreDataGeneratedAccessors)

@end

@interface _AGRelationship (CoreDataGeneratedPrimitiveAccessors)



- (AGEntity*)primitiveTarget;
- (void)setPrimitiveTarget:(AGEntity*)value;


@end
