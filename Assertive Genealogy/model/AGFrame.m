#import "AGFrame.h"
#import "AGFrameGroup.h"
#import "AGSourceItem.h"
#import "AGSourceItemController.h"

@implementation AGFrame {
    
}

#pragma mark Properties

- (NSRect)rect
{
    return NSRectFromString([self rectString]);
}

- (void)setRect:(NSRect)rect
{
    [self setRectString:NSStringFromRect(rect)];
}

@end
