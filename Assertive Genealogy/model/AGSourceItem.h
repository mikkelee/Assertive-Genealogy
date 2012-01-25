#import "_AGSourceItem.h"
#import "AGPluginManager.h"
#import <Quartz/Quartz.h>

@class AGObjectWindowController;

@interface AGSourceItem : _AGSourceItem <AGPluginImageLoadTarget> 

- (NSRect)rect;

#pragma mark IKImageBrowserItem

- (id) imageRepresentation;
- (NSString *) imageRepresentationType;
- (NSString *) imageUID;
- (NSString *) imageTitle;
- (NSString *) imageSubtitle;
@property NSUInteger imageVersion;

#pragma mark Properties

@property (readonly) NSURL *imageURL;
@property BOOL isCached;

@end
