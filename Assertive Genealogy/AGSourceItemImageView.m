//
//  AGSourceItemImageView.m
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 20/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "AGSourceItemImageView.h"
#import "AGFrame.h"
#import "AGFrameGroup.h"
#import "AGSourceItem.h"

@implementation AGSourceItemImageView {
    NSPoint mouseDownPoint;
//    NSMutableArray *frames;
}

//- (void)addFrameObject:(AGFrame *)frame
//{
//    if (frames == nil) {
//        frames = [NSMutableArray arrayWithCapacity:1];
//    }
//    [frames addObject:frame];
//}
//
//- (void)updateTrackingAreas
//{
//    NSTrackingArea *area = nil;
//    
//    [self removeTrackingArea:area];
//    
//    for (AGFrame *frame in frames) {
//        NSRect trackingRect = [self convertImageRectToViewRect:[frame rect]];
//        
//        NSLog(@"trackingRect: %@", NSStringFromRect(trackingRect));
//        
//        NSTrackingArea *area = [[NSTrackingArea alloc] initWithRect:trackingRect 
//                                                            options:(NSTrackingMouseEnteredAndExited | NSTrackingActiveInKeyWindow | NSTrackingInVisibleRect)
//                                                              owner:self 
//                                                           userInfo:[NSDictionary dictionaryWithObject:frame forKey:@"AGFrameKey"]];
//        
//        [self addTrackingArea:area];
//    }
//                               
//    [super updateTrackingAreas];
//}

#pragma mark Events

- (void)mouseDown:(NSEvent *)theEvent
{
    mouseDownPoint = [theEvent locationInWindow];
    CALayer *rootLayer = [self overlayForType:IKOverlayTypeImage];
    CALayer *hitLayer = [rootLayer hitTest:[self convertPoint:mouseDownPoint fromView:nil]];
    
    if ([theEvent clickCount] == 2) {
        [itemController layerDoubleClicked:hitLayer];
    } else if ([theEvent clickCount] == 1) {
        [itemController layerSingleClicked:hitLayer]; //TODO wait to see if doubleclick...
    } else {
        [super mouseDown:theEvent];
    }
}

- (void)mouseDragged:(NSEvent *)theEvent
{
    NSPoint mouseUpPoint = [theEvent locationInWindow];
    CGFloat epsilonSquared = 0.025;
    
    CGFloat dx = mouseDownPoint.x - mouseUpPoint.x, dy = mouseDownPoint.y - mouseUpPoint.y;
    BOOL pointsAreEqual = (dx * dx + dy * dy) < epsilonSquared;
    
    if (!pointsAreEqual) {
        [itemController draggedFrom:mouseDownPoint to:mouseUpPoint done:NO];
    } else {
        [super mouseDragged:theEvent];
    }
}

- (void)mouseUp:(NSEvent *)theEvent
{
    NSPoint mouseUpPoint = [theEvent locationInWindow];
    CGFloat epsilonSquared = 0.025;
    
    CGFloat dx = mouseDownPoint.x - mouseUpPoint.x, dy = mouseDownPoint.y - mouseUpPoint.y;
    BOOL pointsAreEqual = (dx * dx + dy * dy) < epsilonSquared;
    
    if (!pointsAreEqual) {
        [itemController draggedFrom:mouseDownPoint to:mouseUpPoint done:YES];
    } else {
        [super mouseUp:theEvent];
    }
}

//- (void)mouseEntered:(NSEvent *)theEvent
//{
//    NSLog(@"V mouseEntered: %@ %@", theEvent, [theEvent userData]);
//}
//
//- (void)mouseExited:(NSEvent *)theEvent
//{
//    NSLog(@"V mouseExited: %@ %@", theEvent, [theEvent userData]);
//}
//
//- (void)cursorUpdate:(NSEvent *)theEvent
//{
//    NSLog(@"V cursorUpdate: %@ %@", theEvent, [theEvent userData]);
//    [[NSCursor crosshairCursor] set];
//}

//- (void)resetCursorRects
//{
//    if ([itemController isCreatingFrame]) {
//        NSLog(@"resetCursorRects isCreatingFrame");
//        NSCursor *cursor = [NSCursor crosshairCursor];
//        [cursor setOnMouseEntered:YES];
//        
//        [self addCursorRect:[self visibleRect] cursor:cursor];
//    }
//}

#pragma mark Tests

//- (void) viewWillMoveToWindow:(NSWindow *)window
//{
//    NSLog(@"viewWillMoveToWindow %@", window);
//    [super viewWillMoveToWindow:window];
//}
//
//- (void) viewDidMoveToWindow
//{
//    NSLog(@"viewDidMoveToWindow %@", [self window]);
//    [super viewDidMoveToWindow];
//}
//
//- (void)removeFromSuperview
//{
//    NSLog(@"removeFromSuperview %@", [self window]);
//    [super removeFromSuperview];
//}

@end
