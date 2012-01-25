#import "AGWindowObject.h"
#import "AGObjectWindowController.h"

@implementation AGWindowObject {
    AGObjectWindowController *windowController;
}

- (void)showWindowAsChildOf:(NSWindow *)window
{
//    if (windowController == nil) {
//        windowController = [[AGObjectWindowController alloc] initWithObject:self];
//    }
//    [windowController showWindow:self];
//    NSLog(@"[windowController window]: %@", [windowController window]);
//    [[windowController window] makeKeyAndOrderFront:self];
//    [[windowController window] setParentWindow:window];
}

@end
