// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGTag.h instead.

#import <CoreData/CoreData.h>


extern const struct AGTagAttributes {
	__unsafe_unretained NSString *tagKey;
	__unsafe_unretained NSString *tagValue;
} AGTagAttributes;

extern const struct AGTagRelationships {
	__unsafe_unretained NSString *object;
} AGTagRelationships;

extern const struct AGTagFetchedProperties {
} AGTagFetchedProperties;

@class AGTaggedObject;




@interface AGTagID : NSManagedObjectID {}
@end

@interface _AGTag : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGTagID*)objectID;




@property (nonatomic, strong) NSString *tagKey;


//- (BOOL)validateTagKey:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *tagValue;


//- (BOOL)validateTagValue:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) AGTaggedObject* object;

//- (BOOL)validateObject:(id*)value_ error:(NSError**)error_;




@end

@interface _AGTag (CoreDataGeneratedAccessors)

@end

@interface _AGTag (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveTagKey;
- (void)setPrimitiveTagKey:(NSString*)value;




- (NSString*)primitiveTagValue;
- (void)setPrimitiveTagValue:(NSString*)value;





- (AGTaggedObject*)primitiveObject;
- (void)setPrimitiveObject:(AGTaggedObject*)value;


@end
