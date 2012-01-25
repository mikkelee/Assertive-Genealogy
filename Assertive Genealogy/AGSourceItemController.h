//
//  AGSourceItemController.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 20/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import <AppKit/AppKit.h>
#import <Quartz/Quartz.h>

enum {
    AGIdleState,
    AGCreatingState,
    AGEditingState,
    AGCombiningState
};
typedef NSUInteger AGState;

@class AGObjectWindowController;
@class AGSourceItemImageView;

@interface AGSourceItemController : NSObjectController {
    IBOutlet NSArrayController *frameGroups;
    IBOutlet NSArrayController *frames;
    
    IBOutlet AGSourceItemImageView *imageView;
    IBOutlet AGObjectWindowController *windowController;
    IBOutlet NSScrollView *scrollView;
    
    IBOutlet NSPopover *framePopover;
    
    IBOutlet NSWindow *window;
}

#pragma mark IBActions

- (IBAction)addFrame:(id)sender;
- (IBAction)startCombining:(id)sender;
- (IBAction)stopCombining:(id)sender;

#pragma mark Mouse events

- (void)draggedFrom:(NSPoint)startPoint to:(NSPoint)endPoint done:(BOOL)done;
- (void)layerSingleClicked:(CALayer *)layer;
- (void)layerDoubleClicked:(CALayer *)layer;

#pragma mark Properties

@property (readonly) BOOL isCreatingFrame;

@end
