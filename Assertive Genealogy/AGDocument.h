//
//  AGDocument.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 08/08/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>
#import "AGPluginProtocol.h"

@class AGObjectWindowController;

@interface AGDocument : NSPersistentDocument <AGPluginMetadataTarget> {
    //windows
    IBOutlet NSWindow *mainWindow;
    IBOutlet NSWindow *sourceItemWindow;
    
    //controllers
    IBOutlet NSArrayController *sourceController;
    IBOutlet NSArrayController *itemController;
    IBOutlet NSArrayController *pluginController;
    
    //views
    IBOutlet IKImageBrowserView *browserView;
    IBOutlet NSTableView *sourceTable;
    
    //popovers
    IBOutlet NSPopover *sourcePopover;
    IBOutlet NSPopover *pluginPopover;
}

- (void)sourceItemPathDidUpdate:(NSNotification*)notification;

- (IBAction)stopQueue:(id)sender;
- (IBAction)startQueue:(id)sender;
- (IBAction)startSlideshow:(id)sender;
- (IBAction)tableViewDoubleClick:(id)sender;

- (IBAction)showPluginPopup:(id)sender;
- (IBAction)pluginSelected:(id)sender;

#pragma mark IKImageBrowserDelegate

- (void) imageBrowser:(IKImageBrowserView *) aBrowser cellWasDoubleClickedAtIndex:(NSUInteger) index;
- (void) imageBrowser:(IKImageBrowserView *) aBrowser cellWasRightClickedAtIndex:(NSUInteger) index withEvent:(NSEvent *) event;
- (void) imageBrowserSelectionDidChange:(IKImageBrowserView *) aBrowser;

#pragma mark Properties

@property (copy) IBOutlet NSNumber *browserZoom;
@property (readonly) NSArray *pluginNames;
@property (strong) NSString *currentPlugin;

@property (readonly) AGObjectWindowController *sourceItemWindowController;
@property (readonly) AGObjectWindowController *frameGroupWindowController;

@end
