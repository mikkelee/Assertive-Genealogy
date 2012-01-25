// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGEntity.h instead.

#import <CoreData/CoreData.h>
#import "AGAssertion.h"

extern const struct AGEntityAttributes {
} AGEntityAttributes;

extern const struct AGEntityRelationships {
	__unsafe_unretained NSString *inImages;
	__unsafe_unretained NSString *inRelationships;
	__unsafe_unretained NSString *properties;
	__unsafe_unretained NSString *supposition;
} AGEntityRelationships;

extern const struct AGEntityFetchedProperties {
} AGEntityFetchedProperties;

@class AGImageEntities;
@class AGRelationship;
@class AGProperty;
@class AGSupposition;


@interface AGEntityID : NSManagedObjectID {}
@end

@interface _AGEntity : AGAssertion {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGEntityID*)objectID;





@property (nonatomic, strong) AGImageEntities* inImages;

//- (BOOL)validateInImages:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet* inRelationships;

- (NSMutableSet*)inRelationshipsSet;




@property (nonatomic, strong) NSSet* properties;

- (NSMutableSet*)propertiesSet;




@property (nonatomic, strong) AGSupposition* supposition;

//- (BOOL)validateSupposition:(id*)value_ error:(NSError**)error_;




@end

@interface _AGEntity (CoreDataGeneratedAccessors)

- (void)addInRelationships:(NSSet*)value_;
- (void)removeInRelationships:(NSSet*)value_;
- (void)addInRelationshipsObject:(AGRelationship*)value_;
- (void)removeInRelationshipsObject:(AGRelationship*)value_;

- (void)addProperties:(NSSet*)value_;
- (void)removeProperties:(NSSet*)value_;
- (void)addPropertiesObject:(AGProperty*)value_;
- (void)removePropertiesObject:(AGProperty*)value_;

@end

@interface _AGEntity (CoreDataGeneratedPrimitiveAccessors)



- (AGImageEntities*)primitiveInImages;
- (void)setPrimitiveInImages:(AGImageEntities*)value;



- (NSMutableSet*)primitiveInRelationships;
- (void)setPrimitiveInRelationships:(NSMutableSet*)value;



- (NSMutableSet*)primitiveProperties;
- (void)setPrimitiveProperties:(NSMutableSet*)value;



- (AGSupposition*)primitiveSupposition;
- (void)setPrimitiveSupposition:(AGSupposition*)value;


@end
