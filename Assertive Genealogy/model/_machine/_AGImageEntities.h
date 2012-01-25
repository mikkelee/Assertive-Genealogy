// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGImageEntities.h instead.

#import <CoreData/CoreData.h>


extern const struct AGImageEntitiesAttributes {
	__unsafe_unretained NSString *type;
} AGImageEntitiesAttributes;

extern const struct AGImageEntitiesRelationships {
	__unsafe_unretained NSString *frame;
	__unsafe_unretained NSString *target;
} AGImageEntitiesRelationships;

extern const struct AGImageEntitiesFetchedProperties {
} AGImageEntitiesFetchedProperties;

@class AGFrame;
@class AGEntity;



@interface AGImageEntitiesID : NSManagedObjectID {}
@end

@interface _AGImageEntities : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGImageEntitiesID*)objectID;




@property (nonatomic, strong) NSString *type;


//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) AGFrame* frame;

//- (BOOL)validateFrame:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) AGEntity* target;

//- (BOOL)validateTarget:(id*)value_ error:(NSError**)error_;




@end

@interface _AGImageEntities (CoreDataGeneratedAccessors)

@end

@interface _AGImageEntities (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;





- (AGFrame*)primitiveFrame;
- (void)setPrimitiveFrame:(AGFrame*)value;



- (AGEntity*)primitiveTarget;
- (void)setPrimitiveTarget:(AGEntity*)value;


@end
