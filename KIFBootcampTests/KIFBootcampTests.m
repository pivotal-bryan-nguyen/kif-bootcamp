//
//  KIFBootcampTests.m
//  KIFBootcampTests
//
//  Created by Pivotal on 2016-01-19.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
@interface KIFBootcampTests : XCTestCase

@end

@implementation KIFBootcampTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLaunchAppAndWait{
    NSLog(@"Waiting for 5");
    [tester waitForTimeInterval:5];
}

- (void)testSelectPivotCheckInfo {
    NSLog(@"Looking for Gordon Krull");
    [tester waitForViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester tapViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester waitForViewWithAccessibilityLabel:@"KIF Automator"];
    [tester waitForViewWithAccessibilityLabel:@"3"];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
