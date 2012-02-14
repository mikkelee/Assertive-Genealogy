// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGAssertion.h instead.

#import <CoreData/CoreData.h>
#import "AGObject.h"

extern const struct AGAssertionAttributes {
} AGAssertionAttributes;

extern const struct AGAssertionRelationships {
	__unsafe_unretained NSString *frame;
} AGAssertionRelationships;

extern const struct AGAssertionFetchedProperties {
} AGAssertionFetchedProperties;

@class AGFrame;


@interface AGAssertionID : NSManagedObjectID {}
@end

@interface _AGAssertion : AGObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGAssertionID*)objectID;





@property (nonatomic, strong) AGFrame* frame;

//- (BOOL)validateFrame:(id*)value_ error:(NSError**)error_;




@end

@interface _AGAssertion (CoreDataGeneratedAccessors)

@end

@interface _AGAssertion (CoreDataGeneratedPrimitiveAccessors)



- (AGFrame*)primitiveFrame;
- (void)setPrimitiveFrame:(AGFrame*)value;


@end
