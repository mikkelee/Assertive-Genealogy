//
//  AGPluginManager.m
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 11/01/12.
//  Copyright 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "AGPluginManager.h"
#import "AGPluginProtocol.h"
#import "AGSourceItem.h"
#import "AGSource.h"

// TODO: get paths
#pragma mark -

@implementation AGPluginManager {
@private
    NSMutableOrderedSet *queue;
    dispatch_source_t queueTimer;
}

#pragma mark Initialization and teardown

+ (id)sharedInstance // fancy new ARC/GCD singleton!
{
    static dispatch_once_t pred = 0;
    __strong static id _sharedAGPluginManager = nil;
    dispatch_once(&pred, ^{
        _sharedAGPluginManager = [[self alloc] init];
    });
    return _sharedAGPluginManager;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self setQueueLock:[[NSLock alloc] init]];
         
        [self setPlugins:[NSMutableDictionary dictionaryWithCapacity:3]];
        
        NSBundle *main = [NSBundle mainBundle];
        NSMutableArray *all = [[main pathsForResourcesOfType:@"agplugin" 
                                         inDirectory:@"../PlugIns"] mutableCopy];
        [all addObject:@"/Volumes/raid/Genealogy/dev/Assertive Genealogy/DerivedData/Assertive Genealogy/Build/Products/Debug/Arkivalier Online.agplugin"];
        [all addObject:@"/Volumes/raid/Genealogy/dev/Assertive Genealogy/DerivedData/Assertive Genealogy/Build/Products/Debug/Local Folder.agplugin"];
        
        id plugin;
        NSBundle *pluginBundle;
        
        for (NSString *path in all) {
            pluginBundle = [NSBundle bundleWithPath:path];
            [pluginBundle load];
            
            Class principalClass = [pluginBundle principalClass];
            
            if (![principalClass conformsToProtocol:@protocol(AGPlugin)]) {
                continue;
            }
            
            plugin = [[principalClass alloc] init];
            
            [[self plugins] setObject:plugin forKey:[principalClass pluginName]];
        }
        
        //queue:
        queue = [NSMutableOrderedSet orderedSetWithCapacity:3];
        
        uint64_t interval = 1ull * NSEC_PER_SEC; // every 1 second
        uint64_t leeway = 1ull * NSEC_PER_SEC; // with 1 second leeway
        __weak AGPluginManager *weakSelf = self;
        dispatch_block_t block = ^{
            AGPluginManager *strongSelf = weakSelf;
            if (strongSelf) {
                BOOL shouldContinue = YES;
                while ([queue count] > 0 && shouldContinue) {
                    [[strongSelf queueLock] lock];
                    AGSourceItem *item = [queue firstObject];
                    [queue removeObjectAtIndex:0];
                    [[strongSelf queueLock] unlock];
                    shouldContinue = [[strongSelf pluginNamed:[[item source] pluginName]] loadImageForKey:[item key] target:item];
                }
            }
        };
        
        queueTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER,
                                       0, 0, dispatch_get_main_queue());
        if (queueTimer)
        {
            dispatch_source_set_timer(queueTimer, dispatch_walltime(NULL, 0), interval, leeway);
            dispatch_source_set_event_handler(queueTimer, block);
            dispatch_resume(queueTimer);
            dispatch_retain(queueTimer);
        } else {
            NSLog(@"Couldn't create queue");
        }
        
    }
    
    return self;
}

- (void)dealloc
{
    dispatch_release(queueTimer);
}

#pragma mark Plugin access

- (NSArray *)pluginNames
{
    return [[[self plugins] allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}

- (id<AGPlugin>)pluginNamed:(NSString *)pluginName
{
    return [[self plugins] objectForKey:pluginName];
}

#pragma mark Queue

- (BOOL)getNewMetadataFromPluginName:(NSString *)pluginName target:(id <AGPluginMetadataTarget>)target
{
    return [[self pluginNamed:pluginName] getNewMetadataForTarget:target];
}

- (void)enqueueImageLoadForItem:(AGSourceItem *)item prioritize:(BOOL)prioritize
{
    if (prioritize) {
        [[self queueLock] lock];
        [queue removeObject:item];
        [queue insertObject:item atIndex:0];
        [[self queueLock] unlock];
     } else {
         [[self queueLock] lock];
         [queue addObject:item];
         [[self queueLock] unlock];
     }
}

- (void)startQueue
{
    dispatch_resume(queueTimer);
}

- (void)stopQueue
{
    dispatch_suspend(queueTimer);
}

#pragma mark Properties

@synthesize plugins;
@synthesize queueLock;

@end
