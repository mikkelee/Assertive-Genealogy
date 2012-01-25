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
#import "AGSourceItemImageView.h"
#import "AGDocument.h"
#import "AGAssertion.h"

@interface AGSourceItemController ()

- (CALayer *)layerForFrame:(AGFrame *)frame;
- (void)reset;

@end

@implementation AGSourceItemController {
    CALayer *topLayer;
    CAShapeLayer *frameLayer;
    AGState currentState;
    NSMutableArray *layersToCombine;
}

#pragma mark Initialization

- (void)awakeFromNib
{
    [self reset];
}

- (void)reset
{
    frameLayer = [CAShapeLayer layer];
    
    [frameLayer setAutoresizingMask:(kCALayerWidthSizable | kCALayerHeightSizable)];
    
    [frameLayer setBackgroundColor:CGColorCreateGenericRGB(0, 1, 0, 0.5)];
    [frameLayer setBorderWidth:3];
    [frameLayer setBorderColor:CGColorCreateGenericRGB(0, 1, 0, 1)];
    
    [frameLayer setName:@"frameLayer"];
    
    topLayer = [CALayer layer];
    [topLayer setName:@"topLayer"];
    
    for (AGFrameGroup *group in [[windowController representedObject] frameGroupsSet]) {
        for (AGFrame *frame in [group frames]) {
            [topLayer addSublayer:[self layerForFrame:frame]];
        }
    }
    
    [imageView setOverlay:topLayer forType:IKOverlayTypeImage];
    
    currentState = AGIdleState;
    
    layersToCombine = [NSMutableArray arrayWithCapacity:2];
}

#pragma mark IBActions

- (IBAction)addFrame:(id)sender
{
    currentState = AGCreatingState;
}

- (IBAction)startCombining:(id)sender
{
    currentState = AGCombiningState;
    layersToCombine = [NSMutableArray arrayWithCapacity:2];
}

- (IBAction)stopCombining:(id)sender
{
    currentState = AGIdleState;
    
    if ([layersToCombine count] == 0) {
        return;
    }
    
    AGSourceItem *sourceItem = [windowController representedObject];
    
    AGFrameGroup *newGroup = [AGFrameGroup insertInManagedObjectContext:[sourceItem managedObjectContext]];
    [[sourceItem frameGroupsSet] addObject:newGroup];
    
    for (CALayer *layer in layersToCombine) {
        AGFrame *frame = [layer valueForKey:@"AGFrameKey"];
        AGFrameGroup *oldGroup = [frame frameGroup];
        
        [frame setFrameGroup:newGroup];
        
        if ([[oldGroup framesSet] count] == 0) {
            //REMEMBER to update this if the model changes!
            for (AGAssertion *assertion in [oldGroup assertionsSet]) {
                [assertion setFrameGroup:newGroup];
            }
            [[sourceItem managedObjectContext] deleteObject:oldGroup];
        }
    }
    
    NSLog(@"newGroup: %@", newGroup);
    
    layersToCombine = [NSMutableArray arrayWithCapacity:2];
}

#pragma mark Mouse events

- (void)draggedFrom:(NSPoint)startPoint to:(NSPoint)endPoint done:(BOOL)done
{
    switch (currentState) {
        case AGCreatingState:
        {
            //make rect
            NSPoint origin = NSMakePoint(fmin(startPoint.x, endPoint.x), fmin(startPoint.y, endPoint.y));
            NSPoint end = NSMakePoint(fmax(startPoint.x, endPoint.x), fmax(startPoint.y, endPoint.y));
            NSSize size = NSMakeSize(end.x - origin.x, end.y - origin.y);
            NSRect windowRect = NSMakeRect(origin.x, origin.y, size.width, size.height);
            
            //translate to image coordinates:
            NSRect viewRect = [imageView convertRect:windowRect fromView:[[imageView window] contentView]];
            NSRect imageRect = [imageView convertViewRectToImageRect:viewRect];
            
            if (done) {
                currentState = AGIdleState;
                
                [frameLayer removeFromSuperlayer];
                
                AGSourceItem *sourceItem = [windowController representedObject];
                
                AGFrameGroup *tmpGroup = [AGFrameGroup insertInManagedObjectContext:[sourceItem managedObjectContext]];
                AGFrame *frame = [AGFrame insertInManagedObjectContext:[sourceItem managedObjectContext]];
                
                [[sourceItem frameGroupsSet] addObject:tmpGroup];
                [[tmpGroup framesSet] addObject:frame];
                
                [frame setRect:imageRect];
                
                [topLayer addSublayer:[self layerForFrame:frame]];
            } else {
                //draw the frameLayer with the rect
                [CATransaction begin];
                [CATransaction setAnimationDuration:0];
                [frameLayer setFrame:imageRect];
                if (![[topLayer sublayers] containsObject:frameLayer]) {
                    [topLayer addSublayer:frameLayer];
                }
                [CATransaction commit];
            }
        }
            break;
            
        case AGEditingState:
        {
            // move or resize frame+layer
        }
            break;
            
        case AGCombiningState:
            //DO NOTHING
            break;
        case AGIdleState:
            //DO NOTHING
            break;
        default:
            break;
    }
}

- (void)layerSingleClicked:(CALayer *)layer
{
    NSLog(@"layerSingleClicked: %@ %@ %@", [layer name], layer, [layer valueForKey:@"AGFrameKey"]);
    
    switch (currentState) {
        case AGCreatingState:
            //DO NOTHING
            break;
            
        case AGEditingState:
            //DO NOTHING
            break;
            
        case AGCombiningState:
        {
            if ([layer valueForKey:@"AGFrameKey"] != nil) {
                [layersToCombine addObject:layer];
            }
        }
            break;
        case AGIdleState:
        {
            if ([layer valueForKey:@"AGFrameKey"] != nil) {
                NSRect superBounds = [[layer superlayer] convertRect:[layer bounds] fromLayer:layer];
                NSRect rootBounds = [[[layer superlayer] superlayer] convertRect:superBounds fromLayer:[layer superlayer]];
                
                [framePopover showRelativeToRect:rootBounds ofView:[imageView superview] preferredEdge:NSMinYEdge];
            }
        }
            break;
        default:
            break;
    }
}

- (void)layerDoubleClicked:(CALayer *)layer
{
    NSLog(@"layerDoubleClicked: %@ %@ %@", [layer name], layer, [layer valueForKey:@"AGFrameKey"]);
    
    switch (currentState) {
        case AGCreatingState:
            //DO NOTHING
            break;
            
        case AGEditingState:
            //DO NOTHING
            break;
            
        case AGCombiningState:
            //DO NOTHING
            break;
        case AGIdleState:
        {
            AGObjectWindowController *frameGroupWindowController = [(AGDocument *)[windowController document] frameGroupWindowController];
            [frameGroupWindowController setRepresentedObject:[[layer valueForKey:@"AGFrameKey"] frameGroup]];
            [[frameGroupWindowController window] makeKeyAndOrderFront:self];
        }
            break;
        default:
            break;
    }
}

#pragma mark Internals

- (CALayer *)layerForFrame:(AGFrame *)frame
{
    CALayer *layer = [CALayer layer];
    
    [layer setBackgroundColor:CGColorCreateGenericRGB(0, 0, 1, 0.5)];
    [layer setBorderWidth:3];
    [layer setBorderColor:CGColorCreateGenericRGB(0, 0, 1, 1)];
    [layer setName:[[[frame objectID] URIRepresentation] description]];
    [layer setValue:frame forKey:@"AGFrameKey"];
    [layer setFrame:[frame rect]];
    
    return layer;
}

#pragma mark Properties

//- (void)setIsCreatingFrame:(BOOL)isCreatingFrame
//{
//    _isCreatingFrame = isCreatingFrame;
//}

- (BOOL)isCreatingFrame
{
    return (currentState == AGCreatingState);
}

@end
