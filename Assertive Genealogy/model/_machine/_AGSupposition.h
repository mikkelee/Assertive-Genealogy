// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGSupposition.h instead.

#import <CoreData/CoreData.h>
#import "AGObject.h"

extern const struct AGSuppositionAttributes {
	__unsafe_unretained NSString *creator;
	__unsafe_unretained NSString *grade;
	__unsafe_unretained NSString *negation;
} AGSuppositionAttributes;

extern const struct AGSuppositionRelationships {
	__unsafe_unretained NSString *entities;
} AGSuppositionRelationships;

extern const struct AGSuppositionFetchedProperties {
} AGSuppositionFetchedProperties;

@class AGEntity;





@interface AGSuppositionID : NSManagedObjectID {}
@end

@interface _AGSupposition : AGObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGSuppositionID*)objectID;




@property (nonatomic, strong) NSString *creator;


//- (BOOL)validateCreator:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *grade;


@property short gradeValue;
- (short)gradeValue;
- (void)setGradeValue:(short)value_;

//- (BOOL)validateGrade:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *negation;


@property BOOL negationValue;
- (BOOL)negationValue;
- (void)setNegationValue:(BOOL)value_;

//- (BOOL)validateNegation:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* entities;

- (NSMutableSet*)entitiesSet;




@end

@interface _AGSupposition (CoreDataGeneratedAccessors)

- (void)addEntities:(NSSet*)value_;
- (void)removeEntities:(NSSet*)value_;
- (void)addEntitiesObject:(AGEntity*)value_;
- (void)removeEntitiesObject:(AGEntity*)value_;

@end

@interface _AGSupposition (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveCreator;
- (void)setPrimitiveCreator:(NSString*)value;




- (NSNumber*)primitiveGrade;
- (void)setPrimitiveGrade:(NSNumber*)value;

- (short)primitiveGradeValue;
- (void)setPrimitiveGradeValue:(short)value_;




- (NSNumber*)primitiveNegation;
- (void)setPrimitiveNegation:(NSNumber*)value;

- (BOOL)primitiveNegationValue;
- (void)setPrimitiveNegationValue:(BOOL)value_;





- (NSMutableSet*)primitiveEntities;
- (void)setPrimitiveEntities:(NSMutableSet*)value;


@end
