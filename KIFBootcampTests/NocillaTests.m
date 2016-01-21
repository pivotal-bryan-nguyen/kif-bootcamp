//
//  NocillaTests.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import "Nocilla.h"
@interface NocillaTests : KIFTestCase
@end

@implementation NocillaTests

- (void)beforeAll {
    [[LSNocilla sharedInstance] start];
}

- (void)afterAll {
    [[LSNocilla sharedInstance] stop];
}
- (void)afterEach {
    [[LSNocilla sharedInstance] clearStubs];
}

#pragma mark - Task #4: Nocilla Fun

- (void)testNocillaTest
{
    NSLog(@"Starting!!!!");
    NSBundle* myBundle = [NSBundle bundleWithPath:@"/Users/pivotal/Desktop/kif-bootcamp/KIFBootcampTests"];
    NSString *filePath = [myBundle pathForResource:@"pivots" ofType:@"txt"];
    NSLog(@"%@",filePath);
    NSData *MyData = [NSData dataWithContentsOfFile:filePath];
    
    stubRequest(@"POST", @"https://api.parse.com/1/classes/QA_Pivots").
    andReturnRawResponse(MyData);
    [tester waitForTimeInterval:5];
}


@end
