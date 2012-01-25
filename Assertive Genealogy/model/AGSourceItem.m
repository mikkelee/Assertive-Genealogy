#import "AGSourceItem.h"
#import "AGSource.h"
#import <Quartz/Quartz.h>
#import "AGDocument.h"
#import "AGFrameGroup.h"

@implementation AGSourceItem 

- (void)awakeFromInsert
{
    [self setImageVersion:1];
    [self setIsCached:NO];
}

- (NSRect)rect
{
    NSSize imageSize = [[[NSImage alloc] initWithContentsOfFile:[self imagePath]] size];
    return NSMakeRect(0, 0, imageSize.width, imageSize.height);
}

- (void)imageDataDidLoad:(NSData *)data
{
    //NSLog(@"%@ before update: imageRepresentation %@, imageUID %@, imageVersion %lu", self, [self imageRepresentation], [self imageUID], [self imageVersion]);
    NSString *path = [self imagePath];
    
    NSString *directory = [path stringByDeletingLastPathComponent];
    
    BOOL isDir;
    NSFileManager *fileManager= [NSFileManager defaultManager]; 
    if(![fileManager fileExistsAtPath:directory isDirectory:&isDir]) {
        if(![fileManager createDirectoryAtPath:directory withIntermediateDirectories:YES attributes:nil error:NULL]) {
            NSLog(@"Error: Create folder failed %@", directory);
            return;
        }
    }
    
    [data writeToURL:[NSURL fileURLWithPath:path] atomically:YES];
    
    self.isCached = YES;
    self.imageVersion++;
    
    //NSLog(@"%@ before notification: imageRepresentation %@, imageUID %@, imageVersion %lu", self, [self imageRepresentation], [self imageUID], [self imageVersion]);
    [[NSNotificationCenter defaultCenter] postNotificationName:@"AGSourceItem.path.updated" object:self];
}

- (void)setKey:(NSString *)key
{
    [self willChangeValueForKey:@"key"];
    [self setPrimitiveKey:key];
    [self didChangeValueForKey:@"key"];
    
    NSString *supportFolder = [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES) lastObject];
    
    NSCharacterSet *invalidFsChars = [NSCharacterSet characterSetWithCharactersInString:@"\\?%*|\"<>"];
    NSString *scrubbedKey = [[self key] stringByTrimmingCharactersInSet:invalidFsChars];
    
    NSString *path = [NSString stringWithFormat:@"%@/Assertive Genealogy/%@/%@", supportFolder, [[self source] pluginName], scrubbedKey];
    
    //NSLog(@"Setting path %@ for key %@", path, key);
    
    [self setImagePath:path];
    
    self.isCached = [[NSFileManager defaultManager] fileExistsAtPath:[self imagePath]];
    
    //NSLog(@"%@ isCached: %d", self.imagePath, self.isCached);
}

#pragma mark IKImageBrowserItem

- (id) imageRepresentation
{
    if (self.isCached) {
        return [self imagePath];
    } else {
        return nil;
    }
}

- (NSString *) imageRepresentationType
{
    return IKImageBrowserPathRepresentationType;
}

- (NSString *) imageUID
{
    //if (self.isCached) {
        return [[[self objectID] URIRepresentation] description];
    //} else {
    //    return @"tmp";
    //}
}

- (NSString *) imageTitle
{
    return [self name];
}

- (NSString *) imageSubtitle
{
    //TODO tags...
    return @"";
}

@synthesize imageVersion;

#pragma mark Properties

- (NSURL *)imageURL
{
    return [NSURL fileURLWithPath:[self imagePath]];
}

@synthesize isCached;

@end
