//
//  AGObjectViewController.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 18/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AGObjectWindowController : NSWindowController {
}

@property (strong) id representedObject;
@property (copy) IBOutlet NSNumber *zoomFactor;

@end
