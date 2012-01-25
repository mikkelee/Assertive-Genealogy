//
//  AGPluginManager.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 11/01/12.
//  Copyright 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGPluginProtocol.h"

@class AGSourceItem;
@class AGSource;

@interface AGPluginManager : NSObject 

#pragma mark Initialization

+ (id)sharedInstance;

#pragma mark Plugin access

- (NSArray *)pluginNames;
- (id<AGPlugin>)pluginNamed:(NSString *)pluginName;

#pragma mark Queue

- (BOOL)getNewMetadataFromPluginName:(NSString *)pluginName target:(id <AGPluginMetadataTarget>)target;
- (void)enqueueImageLoadForItem:(AGSourceItem *)item prioritize:(BOOL)prioritize;
- (void)startQueue;
- (void)stopQueue;

#pragma mark Metadata

//+ (NSDictionary *)sourceMetadataWithName:(NSString *) items:(NSArray *)items tags:(NSDictionary *)tags;
//+ (NSDictionary *)itemMetadataWithName:(NSString *) key:(NSString *)key tags:(NSDictionary *)tags;

#pragma mark Properties

@property (strong) NSMutableDictionary *plugins;
@property (strong) NSLock *queueLock;

@end
