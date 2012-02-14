//
//  AGSourceItemController.m
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 20/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "AGSourceItemController.h"
#import "AGFrame.h"
#import "AGFrameGroup.h"
#import "AGSourceItem.h"
#import "AGObjectWindowController.h"
#import "MEOverlayView.h"
#import "AGDocument.h"
#import "AGAssertion.h"

@implementation AGSourceItemController {
    MEState currentState;
    AGSourceItem *sourceItem;
    NSMutableOrderedSet *_frames;
}

#pragma mark Initialization

- (void)awakeFromNib
{
    sourceItem = [windowController representedObject];

    _frames = [sourceItem mutableOrderedSetValueForKeyPath:@"frames"];
    
    [overlayView setImageWithURL:[sourceItem imageURL]];
    
    //[overlayView bind:@"contents" toObject:self withKeyPath:@"selection.frames" options:nil];
    
    CGColorRef ofColor = CGColorCreateGenericRGB(0.0f, 0.0f, 1.0f, 0.5f);
    [overlayView setOverlayFillColor:ofColor];
    CGColorRelease(ofColor);
    
    CGColorRef obColor = CGColorCreateGenericRGB(0.0f, 0.0f, 1.0f, 1.0f);
    [overlayView setOverlayBorderColor:obColor];
    CGColorRelease(obColor);
    
    CGColorRef osfColor = CGColorCreateGenericRGB(1.0f, 0.0f, 0.0f, 0.5f);
    [overlayView setOverlaySelectionFillColor:osfColor];
    CGColorRelease(osfColor);
    
    CGColorRef osbColor = CGColorCreateGenericRGB(1.0f, 0.0f, 0.0f, 1.0f);
    [overlayView setOverlaySelectionBorderColor:osbColor];
    CGColorRelease(osbColor);
    
    [overlayView setOverlayBorderWidth:3.0f];
    
    [overlayView setAllowsCreatingOverlays:YES];
    [overlayView setAllowsModifyingOverlays:YES];
    [overlayView setAllowsDeletingOverlays:YES];
    [overlayView setAllowsOverlappingOverlays:NO];
    
    [overlayView setTarget:self];
    [overlayView setAction:@selector(singleClick)];
    [overlayView setDoubleAction:@selector(doubleClick)];
    [overlayView setRightAction:@selector(rightClick)];
    
    [overlayView setAllowsOverlaySelection:YES];
    [overlayView setAllowsEmptyOverlaySelection:YES];
    [overlayView setAllowsMultipleOverlaySelection:YES];
    
    currentState = MEIdleState;
}

#pragma mark MEOverlayViewDataSource

- (NSUInteger)numberOfOverlaysInOverlayView:(MEOverlayView *)anOverlayView
{
    return [_frames count];
}

- (id)overlayView:(MEOverlayView *)anOverlayView overlayObjectAtIndex:(NSUInteger)num
{
    return [_frames objectAtIndex:num];
}

#pragma mark MEOverlayViewDelegate

- (void)overlayView:(MEOverlayView *)anOverlayView didCreateOverlay:(NSRect)rect
{
    NSLog(@"overlay created: %@", NSStringFromRect(rect));
    
    AGFrame *frame = [AGFrame insertInManagedObjectContext:[sourceItem managedObjectContext]];
    
    [[sourceItem framesSet] addObject:frame];
    
    [frame setRect:rect];
    
    [overlayView reloadData];
}

- (void)overlayView:(MEOverlayView *)anOverlayView didModifyOverlay:(id)overlayObject newRect:(NSRect)rect
{
    NSLog(@"overlay %@ got new rectangle %@", overlayObject, NSStringFromRect(rect));

    [overlayObject setRect:rect];
    
    [overlayView reloadData];
}

- (void)overlayView:(MEOverlayView *)anOverlayView didDeleteOverlay:(id)overlayObject
{
    NSLog(@"overlay %@ deleted", overlayObject);
    [[sourceItem managedObjectContext] deleteObject:overlayObject];
    
    [overlayView reloadData];
}



#pragma mark IBActions

- (IBAction)addFrame:(id)sender
{
    if ([(NSButton *)sender state] == NSOnState) {
        [overlayView enterState:MECreatingState];
    } else {
        [overlayView enterState:MEIdleState];
    }
}

- (IBAction)combine:(id)sender
{
    if ([overlayView numberOfSelectedOverlays] < 2) {
        return;
    }
    
//    AGFrameGroup *newGroup = [AGFrameGroup insertInManagedObjectContext:[sourceItem managedObjectContext]];
//    [[sourceItem frameGroupsSet] addObject:newGroup];
//    
//    for (AGFrame *frame in [overlayView selectedOverlays]) {
//        AGFrameGroup *oldGroup = [frame frameGroup];
//        
//        [frame setFrameGroup:newGroup];
//        
//        if ([[oldGroup framesSet] count] == 0) {
//            //REMEMBER to update this if the model changes!
//            for (AGAssertion *assertion in [oldGroup assertionsSet]) {
//                [assertion setFrameGroup:newGroup];
//            }
//            [[sourceItem managedObjectContext] deleteObject:oldGroup];
//        }
//    }
//    
//    NSLog(@"newGroup: %@", newGroup);
}

@end
