//
//  AGSourceItemController.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 20/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import <AppKit/AppKit.h>
#import <Quartz/Quartz.h>

@class AGObjectWindowController;
@class MEOverlayView;

@interface AGSourceItemController : NSObjectController {
    IBOutlet NSArrayController *frameGroups;
    IBOutlet NSArrayController *frames;
    
    IBOutlet MEOverlayView *overlayView;
    IBOutlet AGObjectWindowController *windowController;
    
    IBOutlet NSPopover *framePopover;
    
    IBOutlet NSWindow *window;
}

#pragma mark IBActions

- (IBAction)addFrame:(id)sender;
- (IBAction)combine:(id)sender;

@end
