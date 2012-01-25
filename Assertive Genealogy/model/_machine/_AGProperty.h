// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGProperty.h instead.

#import <CoreData/CoreData.h>
#import "AGAssertion.h"

extern const struct AGPropertyAttributes {
	__unsafe_unretained NSString *negation;
} AGPropertyAttributes;

extern const struct AGPropertyRelationships {
	__unsafe_unretained NSString *subjectEntity;
} AGPropertyRelationships;

extern const struct AGPropertyFetchedProperties {
} AGPropertyFetchedProperties;

@class AGEntity;



@interface AGPropertyID : NSManagedObjectID {}
@end

@interface _AGProperty : AGAssertion {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGPropertyID*)objectID;




@property (nonatomic, strong) NSNumber *negation;


@property BOOL negationValue;
- (BOOL)negationValue;
- (void)setNegationValue:(BOOL)value_;

//- (BOOL)validateNegation:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) AGEntity* subjectEntity;

//- (BOOL)validateSubjectEntity:(id*)value_ error:(NSError**)error_;




@end

@interface _AGProperty (CoreDataGeneratedAccessors)

@end

@interface _AGProperty (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveNegation;
- (void)setPrimitiveNegation:(NSNumber*)value;

- (BOOL)primitiveNegationValue;
- (void)setPrimitiveNegationValue:(BOOL)value_;





- (AGEntity*)primitiveSubjectEntity;
- (void)setPrimitiveSubjectEntity:(AGEntity*)value;


@end
