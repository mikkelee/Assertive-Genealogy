#import "AGSource.h"
#import "AGSourceItem.h"
#import <Quartz/Quartz.h>
#import "AGObjectWindowController.h"

@implementation AGSource {
    AGObjectWindowController *windowController;
}

#pragma mark IKImageBrowserItem 

- (id) imageRepresentation
{
    return [[[self items] firstObject] imagePath];
}

- (NSString *) imageRepresentationType
{
    return IKImageBrowserPathRepresentationType;
}

- (NSString *) imageUID
{
    return [[[self objectID] URIRepresentation] description];
}

- (NSString *) imageTitle
{
    return [self name];
}

- (NSString *) imageSubtitle
{
    return nil;
}

- (NSUInteger) imageVersion
{
    return 1;
}

#pragma mark IKSlideshowDataSource

- (NSUInteger)numberOfSlideshowItems
{
    return [[self items] count];
}

- (id)slideshowItemAtIndex:(NSUInteger)index
{
    return [[[self items] objectAtIndex:index] imagePath];
}

- (NSString *)nameOfSlideshowItemAtIndex:(NSUInteger)index
{
    return [(AGSourceItem *)[[self items] objectAtIndex:index] name];
}

- (void)slideshowDidChangeCurrentIndex:(NSUInteger)newIndex
{
    //TODO
}

@end
