//
//  Assertive_Genealogy_Tests.m
//  Assertive Genealogy Tests
//
//  Created by Mikkel Eide Eriksen on 08/08/11.
//  Copyright 2011 Mikkel Eide Eriksen. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "AGPluginManager.h"

@interface Assertive_Genealogy_Tests : SenTestCase

@end

@implementation Assertive_Genealogy_Tests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testPluginManager
{
    NSArray *pluginNames = [[AGPluginManager sharedInstance] pluginNames];
    
    STAssertTrue([pluginNames count] > 0, @"There are no plugins!");
    
    for (NSString *name in pluginNames) {
        NSLog(@"Plugin found: %@", name);
    }
}

- (void)testQueue
{
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i <= 2; i++) {
            NSLog(@"tick");
            sleep(1);
        }
    });
}

@end
