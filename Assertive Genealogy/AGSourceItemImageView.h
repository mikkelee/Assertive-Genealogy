//
//  AGSourceItemImageView.h
//  Assertive Genealogy
//
//  Created by Mikkel Eide Eriksen on 20/01/12.
//  Copyright (c) 2012 Mikkel Eide Eriksen. All rights reserved.
//

#import <Quartz/Quartz.h>
#import "AGSourceItemController.h"

//TODO dump this pile of ... and use MEOverlayView

@class AGFrame;

@interface AGSourceItemImageView : IKImageView {
    IBOutlet AGSourceItemController *itemController;
}

//- (void)addFrameObject:(AGFrame *)frame;

@end
