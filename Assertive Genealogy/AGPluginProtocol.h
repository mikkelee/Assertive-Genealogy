//
//  AGPluginProtocol.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 11/01/12.
//  Copyright 2012 Mikkel Eide Eriksen. All rights reserved.
//

/*!
 @header AGPlugin Protocols
 Build your bundle against this header, blah blah blah.
 */


#import <Foundation/Foundation.h>

@protocol AGPluginImageLoadTarget;
@protocol AGPluginMetadataTarget;

//can this be done better without an .m file?
#define AGMetadataNameKey @"AGMetadataNameKey"
#define AGMetadataItemsKey @"AGMetadataItemsKey"
#define AGMetadataTagsKey @"AGMetadataTagsKey"
#define AGMetadataImageNameKey @"AGMetadataImageNameKey"
#define AGMetadataImageKeyKey @"AGMetadataImageKeyKey"
#define AGMetadataImageTagsKey @"AGMetadataImageTagsKey"

@protocol AGPlugin <NSObject>

/*! 
 @method pluginName
 @abstract Returns the name of the plugin (required).
 */
+ (NSString *)pluginName;

/*! 
 @method getNewMetadataForTarget:
 @abstract Start the process of obtaining new metadata.
 @param target The callback target; should implement the AGPluginMetadataTarget protocol.
 @discussion Returns YES if the , NO blah blah. Should send pluginNamed:didLoadMetadata: back to the target upon completion.
 */
- (BOOL)getNewMetadataForTarget:(id<AGPluginMetadataTarget>)target;

/*! 
 @method loadImageForKey:target:
 @abstract Start the process of loading a new image.
 @param key A string containing the unique (in this plugin) key for which to load an image.
 @param target The callback target; should implement the AGPluginImageLoadTarget protocol.
 @discussion Returns YES if the , NO blah blah. Should send imageDataDidLoad: back to the target upon completion.
 */
- (BOOL)loadImageForKey:(NSString *)key target:(id<AGPluginImageLoadTarget>)target;

/*! 
 @method imageIsLoadingForKey:
 @abstract Get the current status for the key.
 @param key The key to check.
 */
- (BOOL)imageIsLoadingForKey:(NSString *)key;

@end

@protocol AGPluginMetadataTarget <NSObject>

/*! 
 @method pluginNamed:didLoadMetadata:
 @abstract Is issued when the plugin has obtained the metadata.
 @param pluginName A string containing the name of the plugin.
 @param metadata A dictionary containing the metadata
 @discussion metadata dictionary:
 
 key        value
 AGMetadataNameKey       name of the source
 AGMetadataTagsKey       a dictionary of tags to provide the user with info about the source
 AGMetadataItemsKey      array of dictionaries:
        key         value
        AGMetadataImageNameKey      name of the item
        AGMetadataImageKeyKey       unique identifier for the item (used for obtaining the item through the plugin)
        AGMetadataImageTagsKey      a dictionary of tags to provide the user with info about the image
 */
- (void)pluginNamed:(NSString *)pluginName didLoadMetadata:(NSDictionary *)metadata;

@end

@protocol AGPluginImageLoadTarget <NSObject>

/*! 
 @method imageDataDidLoad:
 @abstract Is issued when the plugin has obtained an image.
 @param data An NSData object containing the image data.
 */
- (void)imageDataDidLoad:(NSData *)data;

@end
