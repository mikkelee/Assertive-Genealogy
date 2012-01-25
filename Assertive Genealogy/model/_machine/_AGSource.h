// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to AGSource.h instead.

#import <CoreData/CoreData.h>
#import "AGTaggedObject.h"

extern const struct AGSourceAttributes {
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *pluginName;
} AGSourceAttributes;

extern const struct AGSourceRelationships {
	__unsafe_unretained NSString *items;
} AGSourceRelationships;

extern const struct AGSourceFetchedProperties {
} AGSourceFetchedProperties;

@class AGSourceItem;




@interface AGSourceID : NSManagedObjectID {}
@end

@interface _AGSource : AGTaggedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (AGSourceID*)objectID;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *pluginName;


//- (BOOL)validatePluginName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSOrderedSet* items;

- (NSMutableOrderedSet*)itemsSet;




@end

@interface _AGSource (CoreDataGeneratedAccessors)

- (void)addItems:(NSOrderedSet*)value_;
- (void)removeItems:(NSOrderedSet*)value_;
- (void)addItemsObject:(AGSourceItem*)value_;
- (void)removeItemsObject:(AGSourceItem*)value_;

@end

@interface _AGSource (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitivePluginName;
- (void)setPrimitivePluginName:(NSString*)value;





- (NSMutableOrderedSet*)primitiveItems;
- (void)setPrimitiveItems:(NSMutableOrderedSet*)value;


@end
