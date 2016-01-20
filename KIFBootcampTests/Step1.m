//
//  Step1.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-19.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
@interface Step1 : KIFUITestActor

@end

@implementation Step1

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)selectPivotCheckInfo
{
    [tester waitForAccessibilityLabel]
    NSLog(@"Gordon Krull loaded");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
