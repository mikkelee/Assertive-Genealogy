// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGAttribute.h instead.

#import <CoreData/CoreData.h>
#import "AGProperty.h"

extern const struct AGAttributeAttributes {
	__unsafe_unretained NSString *key;
	__unsafe_unretained NSString *value;
} AGAttributeAttributes;

extern const struct AGAttributeRelationships {
} AGAttributeRelationships;

extern const struct AGAttributeFetchedProperties {
} AGAttributeFetchedProperties;





@interface AGAttributeID : NSManagedObjectID {}
@end

@interface _AGAttribute : AGProperty {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGAttributeID*)objectID;




@property (nonatomic, strong) NSString *key;


//- (BOOL)validateKey:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *value;


//- (BOOL)validateValue:(id*)value_ error:(NSError**)error_;





@end

@interface _AGAttribute (CoreDataGeneratedAccessors)

@end

@interface _AGAttribute (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveKey;
- (void)setPrimitiveKey:(NSString*)value;




- (NSString*)primitiveValue;
- (void)setPrimitiveValue:(NSString*)value;




@end
