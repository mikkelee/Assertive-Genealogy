//
//  AGObjectViewController.m
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 18/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import "AGObjectWindowController.h"

@implementation AGObjectWindowController

- (void)windowWillLoad
{
    [self setZoomFactor:[NSNumber numberWithFloat:0.5]];
}

- (BOOL)shouldCloseDocument
{
    return NO;
}

@synthesize representedObject;
@synthesize zoomFactor;

@end
