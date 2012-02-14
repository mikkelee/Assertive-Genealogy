//
//  AGDocument.m
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 08/08/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import "AGDocument.h"
#import "AGPluginManager.h"
#import "AGSource.h"
#import "AGSourceItem.h"
#import "AGTag.h"
#import "AGObjectWindowController.h"

@implementation AGDocument {
    NSWindowController *mainWindowController;
    AGObjectWindowController *sourceItemWindowController;
    AGObjectWindowController *frameGroupWindowController;
}

#pragma mark Initialization

- (id)init
{
    self = [super init];
    if (self) {
        [self setBrowserZoom:[NSNumber numberWithFloat:0.5]];
        [self setCurrentPlugin:@"Select..."];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sourceItemPathDidUpdate:) name:@"AGSourceItem.path.updated" object:nil];
    }
    return self;
}

#pragma mark Windows & controllers

- (void)makeWindowControllers
{
    NSLog(@"%@ makeWindowControllers", self);
    
    mainWindowController = [[NSWindowController alloc] initWithWindowNibName:@"AGDocument" owner:self];
    [mainWindowController setShouldCloseDocument:YES];
    [self addWindowController:mainWindowController];
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    
    [sourceTable setDoubleAction:@selector(tableViewDoubleClick:)];
    [sourceTable setTarget:self];
}

#pragma mark Misc NSDocument stuff

+ (BOOL)autosavesInPlace
{
    return YES;
}

#pragma mark User interface

- (IBAction)stopQueue:(id)sender
{
    [[AGPluginManager sharedInstance] stopQueue];
}

- (IBAction)startQueue:(id)sender
{
    [[AGPluginManager sharedInstance] startQueue];
}

- (IBAction)startSlideshow:(id)sender
{
    [[IKSlideshow sharedSlideshow] runSlideshowWithDataSource: [[sourceController selectedObjects] lastObject]
                                                       inMode: IKSlideshowModeImages
                                                      options: NULL];
}

- (IBAction)showPluginPopup:(id)sender
{
    [pluginPopover showRelativeToRect:NSMakeRect(0, 0, 0, 0) ofView:sender preferredEdge:NSMaxXEdge];
}

- (IBAction)pluginSelected:(id)sender
{
    if ([[self currentPlugin] isEqualToString:@"Select..."]) {
        return;
    }
    [pluginPopover performClose:sender];
    [[AGPluginManager sharedInstance] getNewMetadataFromPluginName:[self currentPlugin] target:self];
    [self setCurrentPlugin:@"Select..."];
    
}

- (void)pluginNamed:(NSString *)pluginName didLoadMetadata:(NSDictionary *)metadata
{
    NSManagedObjectContext *ctx = [self managedObjectContext];
    AGSource *source = [AGSource insertInManagedObjectContext:ctx];
    [source setPluginName:pluginName];
    
    [source setName:[metadata objectForKey:AGMetadataNameKey]];
    for (NSString *key in [metadata objectForKey:AGMetadataTagsKey]) {
        AGTag *tag = [AGTag insertInManagedObjectContext:ctx];
        
        [tag setTagKey:key];
        [tag setTagValue:[[[metadata objectForKey:AGMetadataTagsKey] valueForKey:key] description]];
        
        [[source tagsSet] addObject:tag];
    }
    
    for (NSDictionary *item in [metadata objectForKey:AGMetadataItemsKey]) {
        AGSourceItem *newItem = [AGSourceItem insertInManagedObjectContext:ctx];
        [[source itemsSet] addObject:newItem];
        
        [newItem setName:[item objectForKey:AGMetadataImageNameKey]];
        [newItem setKey:[item objectForKey:AGMetadataImageKeyKey]];
        for (NSString *key in [item objectForKey:AGMetadataImageTagsKey]) {
            AGTag *tag = [AGTag insertInManagedObjectContext:ctx];
            
            [tag setTagKey:key];
            [tag setTagValue:[[[item objectForKey:AGMetadataImageTagsKey] valueForKey:key] description]];
            
            [[newItem tagsSet] addObject:tag];
        }
        
        if (![newItem isCached]) {
            //TODO load all images not needing download!
            //NSLog(@"newItem wasn't cached: %@ - %@", newItem, [newItem imageRepresentation]);
            [[AGPluginManager sharedInstance] enqueueImageLoadForItem:newItem prioritize:NO];
        }
    }
    
    [sourceController addObject:source];
}

- (IBAction)tableViewDoubleClick:(id)sender
{
    //TODO view based table view so i can do proper rects!
    [sourcePopover showRelativeToRect:[sourceTable rectOfRow:[sourceTable selectedRow]] ofView:sender preferredEdge:NSMaxXEdge];
}

- (void)tableViewSelectionDidChange:(NSNotification *)aNotification
{
    if ([sourcePopover isShown]) {
        [sourcePopover setPositioningRect:[sourceTable rectOfRow:[sourceTable selectedRow]]];
    }
}

- (void)sourceItemPathDidUpdate:(NSNotification*)notification;
{
   [browserView reloadData];
}

#pragma mark IKImageBrowserDelegate

- (void) imageBrowser:(IKImageBrowserView *) aBrowser cellWasDoubleClickedAtIndex:(NSUInteger) index
{
    //[NSApp beginSheet:sourceItemWindow modalForWindow:[self windowForSheet] modalDelegate:nil didEndSelector:nil contextInfo:nil];                        
    //[[[itemController arrangedObjects] objectAtIndex:index] showWindowAsChildOf:[self windowForSheet]];
    AGObjectWindowController *wc = [self sourceItemWindowController];
    [wc setRepresentedObject:[[itemController arrangedObjects] objectAtIndex:index]];
    [wc showWindow:self];
    [[wc window] makeKeyAndOrderFront:self];
}

- (void) imageBrowser:(IKImageBrowserView *) aBrowser cellWasRightClickedAtIndex:(NSUInteger) index withEvent:(NSEvent *) event
{
    //TODO
    NSLog(@"right click: %@", [[itemController arrangedObjects] objectAtIndex:index]);
}

- (void) imageBrowserSelectionDidChange:(IKImageBrowserView *) aBrowser
{
    //push selections to queue with priority
    [[aBrowser selectionIndexes] enumerateIndexesUsingBlock:^(NSUInteger index, BOOL *stop){
        if (![(AGSourceItem *)[[itemController arrangedObjects] objectAtIndex:index] isCached]) {
            [[AGPluginManager sharedInstance] enqueueImageLoadForItem:[[itemController arrangedObjects] objectAtIndex:index]
                                                           prioritize:YES];
        }
    }];
}

#pragma mark Properties

@synthesize browserZoom;
@synthesize currentPlugin;

- (NSArray *)pluginNames
{
    return [[NSArray arrayWithObject:@"Select..."] arrayByAddingObjectsFromArray:[[AGPluginManager sharedInstance] pluginNames]];
}

- (AGObjectWindowController *)frameGroupWindowController
{
    if (frameGroupWindowController == nil) {
        frameGroupWindowController = [[AGObjectWindowController alloc] initWithWindowNibName:@"AGFrameGroup"];
        [self addWindowController:frameGroupWindowController];
    }
    return frameGroupWindowController;
}

- (AGObjectWindowController *)sourceItemWindowController
{
    if (sourceItemWindowController == nil) {
        sourceItemWindowController = [[AGObjectWindowController alloc] initWithWindowNibName:@"AGSourceItem"];
        [self addWindowController:sourceItemWindowController];
    }
    return sourceItemWindowController;
}

@end
