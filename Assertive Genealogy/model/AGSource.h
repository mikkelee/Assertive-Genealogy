#import "_AGSource.h"

@class AGObjectWindowController;

@interface AGSource : _AGSource 

#pragma mark IKImageBrowserItem

- (id) imageRepresentation;
- (NSString *) imageRepresentationType;
- (NSString *) imageUID;
- (NSString *) imageTitle;
- (NSString *) imageSubtitle;
- (NSUInteger) imageVersion;

#pragma mark IKSlideshowDataSource

- (NSUInteger)numberOfSlideshowItems;
- (id)slideshowItemAtIndex:(NSUInteger)index;
- (NSString *)nameOfSlideshowItemAtIndex:(NSUInteger)index;
- (void)slideshowDidChangeCurrentIndex:(NSUInteger)newIndex;

@end
